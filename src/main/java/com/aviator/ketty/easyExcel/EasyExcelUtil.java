package com.aviator.ketty.easyExcel;


import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.date.TimeInterval;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.metadata.CellData;
import com.alibaba.excel.metadata.Head;
import com.alibaba.excel.read.builder.ExcelReaderBuilder;
import com.alibaba.excel.read.metadata.ReadSheet;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.alibaba.excel.util.CollectionUtils;
import com.alibaba.excel.write.metadata.WriteSheet;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.alibaba.excel.write.style.column.AbstractColumnWidthStyleStrategy;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.Cell;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>ClassName：EasyExcel工具类</p >
 * <p>Description：</p >
 * <p>Date：2021/9/1</p >
 */
@Slf4j
public class EasyExcelUtil {

    private static Map<String, Object> paramMaps = new HashMap<>();
    //-------------------------------------------------------------- 读取文件解析监听类 start ----------------------------------------------------

    /**
     * <p>ClassName：ExcelListener</p >
     * <p>Description：读取文件解析监听类，此类供外部实例化使用需要设置为静态类</p >
     * <p>Date：2021/9/2</p >
     */
    public static class ExcelListener<T> extends AnalysisEventListener<T> {

        /**
         * <p>存放读取后的数据</p >
         *
         * @date 2021/9/2 0:10
         */
        public List<T> datas = new ArrayList<>();

        /**
         * <p>读取数据，一条一条读取</p >
         *
         * @date 2021/9/2 0:15
         */
        @Override
        public void invoke(T t, AnalysisContext analysisContext) {
            if (ObjectUtil.isEmpty(paramMaps) || paramMaps.isEmpty()) {
                datas.add(t);
                return;
            }
            JSONObject jsonObject = JSON.parseObject(JSON.toJSONString(t));
            for (Map.Entry<String, Object> stringObjectEntry : paramMaps.entrySet()) {
                String key = stringObjectEntry.getKey();
                if (jsonObject.containsKey(key) && jsonObject.get(key).equals(stringObjectEntry.getValue())) {
                    datas.add(t);
                }
            }
        }

        /**
         * <p>解析完毕之后执行</p >
         *
         * @date 2021/9/2 0:06
         */
        @Override
        public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            List<ReadSheet> readSheets = analysisContext.readSheetList();
            System.out.println(datas.size());
            log.info("读取数据条数：{}条！", datas.size());
        }

        public List<T> getDatas() {
            return this.datas;
        }
    }
    //-------------------------------------------------------------- 读取文件解析监听类 end ----------------------------------------------------

    //-------------------------------------------------------------- 导出excel表格，设置自适应列宽配置类 start ----------------------------------------------------

    /**
     * <p>ClassName：Custemhandler</p >
     * <p>Description：设置自适应列宽配置类</p >
     * <p>Date：2021/10/14</p >
     */
    public static class Custemhandler extends AbstractColumnWidthStyleStrategy {

        private static final int MAX_COLUMN_WIDTH = 255;
        //因为在自动列宽的过程中，有些设置地方让列宽显得紧凑，所以做出了个判断
        private static final int COLUMN_WIDTH = 20;
        private Map<Integer, Map<Integer, Integer>> CACHE = new HashMap<>(8);


        @Override
        protected void setColumnWidth(WriteSheetHolder writeSheetHolder, List<CellData> cellDataList, Cell cell, Head head, Integer relativeRowIndex, Boolean isHead) {
            boolean needSetWidth = isHead || !CollectionUtils.isEmpty(cellDataList);
            if (needSetWidth) {
                Map<Integer, Integer> maxColumnWidthMap = (Map) CACHE.get(writeSheetHolder.getSheetNo());
                if (maxColumnWidthMap == null) {
                    maxColumnWidthMap = new HashMap<>(16);
                    CACHE.put(writeSheetHolder.getSheetNo(), maxColumnWidthMap);
                }

                Integer columnWidth = this.dataLength(cellDataList, cell, isHead);
                if (columnWidth >= 0) {
                    if (columnWidth > MAX_COLUMN_WIDTH) {
                        columnWidth = MAX_COLUMN_WIDTH;
                    } else {
                        if (columnWidth < COLUMN_WIDTH) {
                            columnWidth = columnWidth * 2;
                        }
                    }

                    Integer maxColumnWidth = (Integer) ((Map) maxColumnWidthMap).get(cell.getColumnIndex());
                    if (maxColumnWidth == null || columnWidth > maxColumnWidth) {
                        ((Map) maxColumnWidthMap).put(cell.getColumnIndex(), columnWidth);
                        writeSheetHolder.getSheet().setColumnWidth(cell.getColumnIndex(), columnWidth * 256);
                    }
                }
            }
        }


        private Integer dataLength(List<CellData> cellDataList, Cell cell, Boolean isHead) {
            if (isHead) {
                return cell.getStringCellValue().getBytes().length;
            } else {
                CellData cellData = cellDataList.get(0);
                CellDataTypeEnum type = cellData.getType();
                if (type == null) {
                    return -1;
                } else {
                    switch (type) {
                        case STRING:
                            return cellData.getStringValue().getBytes().length;
                        case BOOLEAN:
                            return cellData.getBooleanValue().toString().getBytes().length;
                        case NUMBER:
                            return cellData.getNumberValue().toString().getBytes().length;
                        default:
                            return -1;
                    }
                }
            }
        }
    }
    //-------------------------------------------------------------- 导出excel表格，设置自适应列宽配置类 end -----------------------------------------------------

    /**
     * <p> 读取Excel文件返回数据集合，不包含表头，默认读取第一个sheet数据 </p >
     *
     * @param inputStream   输入流
     * @param tClass        数据映射类
     * @param excelListener 读取监听类
     * @return List 结果集
     * @date 2021/9/2 0:17
     */
    public static <T> List<T> readExcel(InputStream inputStream, Class<T> tClass, ExcelListener<T> excelListener) {
        if (ObjectUtil.isNull(inputStream) || ObjectUtil.isNull(tClass) || ObjectUtil.isNull(excelListener)) {
            return null;
        }
        ExcelReaderBuilder read = EasyExcel.read(inputStream, tClass, excelListener);
        read.sheet().doRead();
        return excelListener.getDatas();
    }


    /**
     * @param inputStream   读取流
     * @param tClass        读取对象
     * @param excelListener 监听者
     * @param paramMap      筛选条件
     * @param <T>           返回值泛型
     * @return 返回值
     */
    public static <T> List<T> readExcel(InputStream inputStream, Class<T> tClass, ExcelListener<T> excelListener, Map<String, Object> paramMap) {
        if (ObjectUtil.isNull(inputStream) || ObjectUtil.isNull(tClass) || ObjectUtil.isNull(excelListener)) {
            return null;
        }
        ExcelReaderBuilder read = EasyExcel.read(inputStream, tClass, excelListener);
        paramMaps = paramMap;
        read.sheet().doRead();
        return excelListener.getDatas();
    }

    /**
     * <p> 读取Excel文件返回数据集合，不包含表头，读取第x个sheet数据，不设置sheet就读取全部 </p >
     *
     * @param inputStream   输入流
     * @param tClass        数据映射类
     * @param excelListener 读取监听类
     * @return List 结果集
     * @date 2021/9/2 0:17
     */
    public static <T> List<T> readExcel(InputStream inputStream, Integer sheetNo, Class<T> tClass, ExcelListener<T> excelListener) {
        if (ObjectUtil.isNull(inputStream) || ObjectUtil.isNull(tClass) || ObjectUtil.isNull(excelListener)) {
            return null;
        }
        ExcelReaderBuilder read = EasyExcel.read(inputStream, tClass, excelListener);
        if (ObjectUtil.isNotNull(sheetNo)) {
            read.sheet(sheetNo).doRead();
        } else {
            ExcelReader excelReader = read.build();
            excelReader.readAll();
            excelReader.finish();
        }
        return excelListener.getDatas();
    }


    /**
     * <p> 读取Excel文件返回数据集合，不包含表头，读取第x个sheet数据，不设置sheet就读取全部 </p >
     *
     * @param inputStream   输入流
     * @param tClass        数据映射类
     * @param excelListener 读取监听类
     * @param startRow      第几行开始
     * @return List 结果集
     * @date 2021/9/2 0:17
     */
    public static <T> List<T> readExcel(InputStream inputStream, Integer sheetNo, Class<T> tClass, ExcelListener<T> excelListener, Integer startRow) {
        if (ObjectUtil.isNull(inputStream) || ObjectUtil.isNull(tClass) || ObjectUtil.isNull(excelListener)) {
            return null;
        }
        ExcelReaderBuilder read = EasyExcel.read(inputStream, tClass, excelListener);
        if (ObjectUtil.isNotNull(sheetNo)) {
            read.sheet(sheetNo).headRowNumber(startRow - 1).doRead();
        } else {
            ExcelReader excelReader = read.build();
            excelReader.readAll();
            excelReader.finish();
        }
        List<T> datas = excelListener.getDatas();
        if (CollectionUtil.isNotEmpty(datas) && datas.get(0) == null) {
            datas.remove(0);
        }
        return datas;
    }





    /**
     * <p>不带模板输出数据到Excel，数据传输类属性用 @ExcelProperty("") 标注</p >
     *
     * @param response 响应对象
     * @param tClass   输出格式
     * @param datas    输出的数据
     * @date 2021/9/2 0:32
     * @return：
     */
    public static <T> void writeEasyExcel(HttpServletResponse response, Class<T> tClass, List<T> datas, String fileName) throws IOException {
        TimeInterval timer = DateUtil.timer();
        if (ObjectUtil.isNull(response) || ObjectUtil.isNull(tClass)) {
            return;
        }

        if (StrUtil.isBlank(fileName)) {
            fileName = "excel.xlsx";
        } else {
            if (!fileName.contains(".xlsx")) {
                fileName = fileName + ".xlsx";
            }
        }
        response.setStatus(HttpServletResponse.SC_OK);
        response.setCharacterEncoding("utf-8");
        fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
        response.setHeader("Content-disposition", "attachment;filename*=utf-8''" + fileName + ".xlsx");
        // 这里需要设置不关闭流
        EasyExcel.write(response.getOutputStream(), tClass)
                .registerWriteHandler(new Custemhandler())
                .excelType(ExcelTypeEnum.XLSX)
                .sheet("sheet")
                .doWrite(datas);
        log.info("导出exlce数据：{}条，耗时：{}秒！", datas.size(), timer.intervalSecond());
    }

    /**
     * <p>带模板输出数据到Excel，数据传输类属性用 @ExcelProperty("") 标注</p >
     *
     * @param outputStream 输出流
     * @param tClass       输出格式
     * @param datas        输出的数据
     * @date 2021/9/2 0:32
     * @return：
     */
    public static <T> void writeExcel(InputStream inputStream, OutputStream outputStream,
                                      Class<T> tClass, List<T> datas) {
        TimeInterval timer = DateUtil.timer();
        if (ObjectUtil.isNull(outputStream) || ObjectUtil.isNull(tClass)) {
            return;
        }
//        EasyExcel.write(outputStream, tClass).withTemplate(inputStream).sheet("sheet").doWrite(datas);
        EasyExcel.write(outputStream, tClass).excelType(ExcelTypeEnum.XLSX).
                withTemplate(inputStream).sheet("sheet").doFill(datas);
        log.info("导出exlce数据：{}条，耗时：{}秒！", datas.size(), timer.intervalSecond());
    }


    /**
     * <p>不带模板输出数据到Excel，数据传输类属性用 @ExcelProperty("") 标注</p >
     *
     * @param response 响应对象
     * @param tClass   输出格式
     * @param datas    输出的数据
     * @date 2021/9/2 0:32
     * @return：
     */
    public static <T> void writeExcel(HttpServletResponse response, Class<T> tClass, List<T> datas, String fileName) throws IOException, IllegalAccessException, NoSuchFieldException {
        TimeInterval timer = DateUtil.timer();
        if (ObjectUtil.isNull(response) || ObjectUtil.isNull(tClass)) {
            return;
        }

        if (StrUtil.isBlank(fileName)) {
            fileName = "excel.xlsx";
        } else {
            if (!fileName.contains(".xlsx")) {
                fileName = fileName + ".xlsx";
            }
        }

        //编码设置成UTF-8，excel文件格式为.xlsx
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("UTF-8");
        // 这里URLEncoder.encode可以防止中文乱码 和easyexcel本身没有关系
        fileName = URLEncoder.encode(fileName, "UTF-8");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);

        //处理注解转换
//        if(CollUtil.isNotEmpty(datas)){
//            for (T dataObj : datas) {
//                AnnotationUtil.resolveAnnotation(tClass, dataObj);
//            }
//        }
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream(), tClass).build();
        WriteSheet writeSheet = new WriteSheet();
        writeSheet.setSheetName("sheet");
        excelWriter.write(datas, writeSheet);
        excelWriter.finish();
        log.info("导出exlce数据：{}条，耗时：{}秒！", datas.size(), timer.intervalSecond());
    }

    /**
     * <p>不带模板输出数据到Excel，数据传输类属性用 @ExcelProperty("") 标注</p >
     *
     * @param response 响应对象
     * @param tClass   输出格式
     * @param datas    输出的数据
     * @date 2021/9/2 0:32
     * @return：
     */
    public static <T> void writeExcelWithConvert(HttpServletResponse response, Class<T> tClass, List<T> datas, String fileName) throws IOException, IllegalAccessException, NoSuchFieldException {
        TimeInterval timer = DateUtil.timer();
        if (ObjectUtil.isNull(response) || ObjectUtil.isNull(tClass)) {
            return;
        }

        if (StrUtil.isBlank(fileName)) {
            fileName = "excel.xlsx";
        } else {
            if (!fileName.contains(".xlsx")) {
                fileName = fileName + ".xlsx";
            }
        }

        //编码设置成UTF-8，excel文件格式为.xlsx
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("UTF-8");
        // 这里URLEncoder.encode可以防止中文乱码 和easyexcel本身没有关系
        fileName = URLEncoder.encode(fileName, "UTF-8");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);

        //处理注解转换
//        if(CollUtil.isNotEmpty(datas)){
//            for (T dataObj : datas) {
//                AnnotationUtil.resolveAnnotation(tClass, dataObj);
//            }
//        }
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream(), tClass)
                .registerConverter(new ListConverter()).build();
        WriteSheet writeSheet = new WriteSheet();
        writeSheet.setSheetName("sheet");
        excelWriter.write(datas, writeSheet);
        excelWriter.finish();
        log.info("导出exlce数据：{}条，耗时：{}秒！", datas.size(), timer.intervalSecond());
    }


}

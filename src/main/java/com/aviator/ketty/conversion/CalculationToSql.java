package com.aviator.ketty.conversion;import cn.hutool.core.io.file.FileReader;import cn.hutool.core.util.IdUtil;import com.aviator.ketty.pojo.Rule;import java.io.BufferedWriter;import java.io.File;import java.io.FileWriter;import java.io.IOException;import java.nio.file.Paths;import java.util.List;import java.util.stream.Collectors;/** * @Author ketty * @Create 2023/6/19 * @Version 1.0 */public class CalculationToSql {    public static final String SPUName = "1022754";    public static final String fileName = "script/2-隔热板/" + SPUName + "计算脚本.av";    public static final String sqlName = "sql/2-隔热板/" + SPUName + "-计算脚本sql语句.sql";    public static void main(String[] args) {        // hutools 工具包        FileReader fileReader = new FileReader(fileName);        // 将文档的内容按照一行一行加        List<String> strings = fileReader.readLines().stream()                .filter(line -> !line.trim().isEmpty())                .collect(Collectors.toList());        // 将文档的内容转为 rule 对象        Rule rule = new Rule();        rule.setRuleId(IdUtil.getSnowflakeNextId());        // 表达式        String expression = "";        String remark = "";        for (int i = 0; i < strings.size(); i++) {            String str = strings.get(i);            if (str.contains("##")) {            } else if(str.contains("\n")){            }else {                expression = expression + str+"\n";            }            if (i == strings.size() - 1) {                // 封装对象集合                remark = SPUName + "计算脚本";                extracted(expression, rule, remark);            }        }        // 假设userList已经初始化并添加了多个User对象        StringBuilder sqlBuilder = new StringBuilder();        sqlBuilder.append("DELETE FROM `goods_rule` WHERE spu='" + SPUName + "' AND rule_type='10';\n");        sqlBuilder.append("INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUES ");        sqlBuilder.append("(");        sqlBuilder.append(rule.getRuleId()).append(",");        sqlBuilder.append(rule.getSpu()).append(",");        sqlBuilder.append("'").append(rule.getRuleType()).append("',");        sqlBuilder.append("'").append(rule.getExpression()).append("',");        sqlBuilder.append("'").append(rule.getEnable()).append("',");        sqlBuilder.append("").append("now() ").append(",");        sqlBuilder.append("'").append(rule.getRemark()).append("'");        sqlBuilder.append("),");        // 去掉最后一个逗号        sqlBuilder.deleteCharAt(sqlBuilder.length() - 1);        generateFile(sqlName, sqlBuilder.toString());    }    private static void extracted(String expression, Rule rule, String str) {        // 规则类型：10->计算脚本，20->验证脚本        rule.setRuleType(10);        // spu编码        rule.setSpu(SPUName);        // 是否禁用改规则：0->启用，1->禁用        rule.setEnable(0);        // 备注        rule.setRemark(str);        // 表达式        rule.setExpression(expression);    }    public static void generateFile(String filePath, String content) {        try {            filePath = Paths.get("E:\\aviatorscript\\src\\main\\resources", filePath).toString();            File file = new File(filePath);            if (!file.exists()) {                file.createNewFile();            }            BufferedWriter writer = new BufferedWriter(new FileWriter(filePath));            writer.write(content);            writer.close();            System.out.println("文件已生成：" + filePath);        } catch (IOException e) {            e.printStackTrace();        }    }}
package com.aviator.ketty.conversion;import cn.hutool.core.io.file.FileReader;import cn.hutool.core.util.IdUtil;import com.aviator.ketty.pojo.Rule;import java.io.BufferedWriter;import java.io.FileWriter;import java.io.IOException;import java.util.ArrayList;import java.util.List;import java.util.regex.Matcher;import java.util.regex.Pattern;/** * @Author ketty bluce * @Create 2023/6/14 * @Version 1.0 */public class ConvertToSql {    public static final String fileName = "script/1001245验证脚本.txt";    public static final String sqlName = "E:\\aviatorscript\\src\\main\\resources\\sql\\1001245-sql语句.sql";    public static void main(String[] args) {        // hutools 工具包        FileReader fileReader = new FileReader(fileName);        // 将文档的内容按照一行一行加载        List<String> strings = fileReader.readLines();        // 将文档的内容转为 rule 对象        List<Rule> list = new ArrayList<>();        // 表达式        String expression = "";        String remark = "";        for (int i = 0; i < strings.size(); i++) {            String str = strings.get(i);            if (i == 0) {                remark = str;                continue;            }            if (str.contains("##")) {                Rule rule = new Rule();                remark = remark.replace("##","").trim();                extracted(expression, rule, remark);                list.add(rule);                expression = "";                remark = str;            } else {                expression = expression + str + "\n";            }            if (i == strings.size() - 1) {                Rule rule = new Rule();                // 封装对象集合                remark = remark.replace("##","").trim();                extracted(expression, rule, remark);                list.add(rule);            }        }        // 假设userList已经初始化并添加了多个User对象        StringBuilder sqlBuilder = new StringBuilder();        sqlBuilder.append("DELETE FROM `goods_rule` WHERE spu='" + getString(fileName) + "' AND rule_type='20';");        for (Rule rule : list) {            sqlBuilder.append("\n");            sqlBuilder.append("INSERT INTO goods_rule (rule_id,spu, rule_type, expression,`enable`,create_time,remark) VALUE ");            sqlBuilder.append("(");            sqlBuilder.append(rule.getRuleId()).append(",");            sqlBuilder.append(rule.getSpu()).append(",");            sqlBuilder.append("'").append(rule.getRuleType()).append("',");            sqlBuilder.append("'").append(rule.getExpression()).append("',");            sqlBuilder.append("'").append(rule.getEnable()).append("',");            sqlBuilder.append("").append("now() ").append(",");            sqlBuilder.append("'").append(rule.getRemark()).append("'");            sqlBuilder.append(");\n");        }        // 去掉最后一个逗号//        sqlBuilder.deleteCharAt(sqlBuilder.length() - 1);        generateFile(sqlName, sqlBuilder.toString());    }    private static void extracted(String expression, Rule rule, String str) {        // 规则类型：10->计算脚本，20->验证脚本        rule.setRuleType(20);        // 规则Id        rule.setRuleId(IdUtil.getSnowflakeNextId());        // spu编码        rule.setSpu(getString(fileName));        // 是否禁用改规则：0->启用，1->禁用        rule.setEnable(0);        // 备注        rule.setRemark(str);        // 表达式        rule.setExpression(expression);    }    private static String getString(String str) {        Pattern pattern = Pattern.compile("\\d+");        Matcher matcher = pattern.matcher(str);        String SPU = "";        while (matcher.find()) {            SPU = SPU + matcher.group();        }        return SPU;    }    public static void generateFile(String filePath, String content) {        try {            BufferedWriter writer = new BufferedWriter(new FileWriter(filePath));            writer.write(content);            writer.close();            System.out.println("文件已生成：" + filePath);        } catch (IOException e) {            e.printStackTrace();        }    }}
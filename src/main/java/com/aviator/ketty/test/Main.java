package com.aviator.ketty.test;import java.util.regex.Matcher;import java.util.regex.Pattern;public class Main {    public static void main(String[] args) {        String str = ConvertToSql.fileName;        Pattern pattern = Pattern.compile("\\d+");        Matcher matcher = pattern.matcher(str);        String SPU = "";        while (matcher.find()) {            SPU = SPU + matcher.group();        }        System.out.println(SPU);    }}
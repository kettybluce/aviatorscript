package com.aviator.ketty.utils;

public class CheckBasesType {
    public static boolean isBoolean(String param){
        return "true".equalsIgnoreCase(param) || "false".equalsIgnoreCase(param);
    }
}

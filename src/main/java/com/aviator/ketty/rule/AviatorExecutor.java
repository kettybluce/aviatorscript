package com.aviator.ketty.rule;

import com.googlecode.aviator.AviatorEvaluator;

import java.util.Map;


public class AviatorExecutor {

    public static <T> T execute(Map<String,Object> context, String expression){

//        Map<String, Object> param = AviatorContext.buildMap(context);
        T execute = (T) AviatorEvaluator.execute(expression, context, true);
        return execute;
    }
}

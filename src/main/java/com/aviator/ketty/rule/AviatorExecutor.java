package com.aviator.ketty.rule;

import com.googlecode.aviator.AviatorEvaluator;
import com.googlecode.aviator.AviatorEvaluatorInstance;
import com.googlecode.aviator.EvalMode;
import com.googlecode.aviator.Options;

import java.util.Map;


public class AviatorExecutor {

    public static <T> T execute(Map<String, Object> context, String expression) {

        // 用户读取内存中JVM的指令解析情况

        // 创建解释器
        AviatorEvaluatorInstance engine = AviatorEvaluator.newInstance(EvalMode.INTERPRETER);
        // 打开跟踪执行

        engine.setOption(Options.USE_USER_ENV_AS_TOP_ENV_DIRECTLY, true);
//        engine.setOption(Options.ALWAYS_PARSE_INTEGRAL_NUMBER_INTO_DECIMAL, true);
//        engine.setOption(Options.ALWAYS_PARSE_FLOATING_POINT_NUMBER_INTO_DECIMAL, true);

//        Map<String, Object> param = AviatorContext.buildMap(context);
        T execute = (T) engine.execute(expression, context, true);
        return execute;
    }
}

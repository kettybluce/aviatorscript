package com.aviator.ketty.rule;


import lombok.extern.slf4j.Slf4j;

import java.util.Map;

@Slf4j
public class CalculatorAviatorRule extends DefaultAviatorRule {

    @Override
    protected AviatorResult executeAndResult(Map<String, Object> param) {

        AviatorResult resultInfo = new AviatorResult();
        try {

            Object result = AviatorExecutor.execute(param, super.getExpression());
            resultInfo.setSuccess(true);
            resultInfo.setResult(result);
        } catch (Exception e) {
            System.out.println("CalculatorAviatorRule execute error: {}" + e);
        }
        return resultInfo;
    }
}

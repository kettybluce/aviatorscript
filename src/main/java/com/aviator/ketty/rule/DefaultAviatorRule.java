package com.aviator.ketty.rule;


import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Map;

@Slf4j
public class DefaultAviatorRule extends AbstractAviatorRule {

    @Override
    public void execute(Map<String, Object> param, List<AbstractAviatorRule> response) {

        super.setResult(executeAndResult(param));
        response.add(this);
    }

    protected AviatorResult executeAndResult(Map<String, Object> param) {

        AviatorResult resultInfo = new AviatorResult();
        try {

            boolean result = AviatorExecutor.execute(param, super.getExpression());
            resultInfo.setSuccess(result);
        } catch (Exception e) {
            System.out.println("CalculatorAviatorRule execute error: {}" + e);
        }
        return resultInfo;
    }
}


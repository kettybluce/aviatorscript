package com.aviator.ketty.rule;



import java.util.List;
import java.util.Map;

public interface RuleChain {

    /***
     * 匹配规则表达式chain
     * @param context
     * @param response：表达式执行结果
     */
    void matchRule(Map<String,Object> context, List<AbstractAviatorRule> response);
}

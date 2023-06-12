package com.aviator.ketty.rule;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


public class DefaultRuleChain implements RuleChain {

    // 规则列表
    private List<AbstractAviatorRule> rules;
    // 规则列表当前索引
    private int position = 0;

    public DefaultRuleChain(List<AbstractAviatorRule> rules){
        this.rules = rules;
    }

    public void addRules(AbstractAviatorRule... rules){
        if(null == this.rules){
            this.rules = new ArrayList<>();
        }
        if(null != rules && rules.length > 0){
            this.rules.addAll(Arrays.asList(rules));
        }
    }

    @Override
    public void matchRule(Map<String,Object> context, List<AbstractAviatorRule> response) {
        while(rules != null && position < rules.size()){
            rules.get(position++).execute(context, response);
        }
    }
}

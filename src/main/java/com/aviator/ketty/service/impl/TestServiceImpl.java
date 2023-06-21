package com.aviator.ketty.service.impl;


import com.aviator.ketty.core.JsonResult;
import com.aviator.ketty.pojo.Rule;
import com.aviator.ketty.rule.AbstractAviatorRule;
import com.aviator.ketty.rule.AviatorResult;
import com.aviator.ketty.rule.DefaultRuleChain;
import com.aviator.ketty.rule.RuleChain;
import com.aviator.ketty.service.RuleService;
import com.aviator.ketty.service.TestService;
import com.aviator.ketty.verify.VerificationTest;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class TestServiceImpl implements TestService {


    @Resource
    private RuleService ruleService;

    /**
     * @param paramMap 脚本需要参数
     * @return
     * @throws IOException
     */
    @Override
    public JsonResult getParamTest(Map<String, Object> paramMap) {
        try {
            QueryWrapper<Rule> ruleQueryWrapper = new QueryWrapper<>();

            ruleQueryWrapper.eq("spu", paramMap.get("spu")).eq("rule_type", 10).last("limit 1");

            Rule rule = ruleService.getOne(ruleQueryWrapper);

            List<AbstractAviatorRule> calRuleList = VerificationTest.buildCalRules(rule.getRuleId(), rule.getExpression());
            RuleChain ruleChain = new DefaultRuleChain(calRuleList);

            // 执行计算脚本逻辑
            List<AbstractAviatorRule> response = new ArrayList<>();
            ruleChain.matchRule(paramMap, response);
            AbstractAviatorRule abstractAviatorRule = response.get(0);
            AviatorResult result = abstractAviatorRule.getResult();

            return JsonResult.buildSuccess(result);
        } catch (Exception e) {
            throw new RuntimeException("未知错误" + e);
        }
    }

}

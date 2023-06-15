package com.aviator.ketty.service.impl;


import com.aviator.ketty.core.JsonResult;
import com.aviator.ketty.rule.AbstractAviatorRule;
import com.aviator.ketty.rule.AviatorResult;
import com.aviator.ketty.rule.DefaultRuleChain;
import com.aviator.ketty.rule.RuleChain;
import com.aviator.ketty.service.TestService;
import com.aviator.ketty.utils.FileUtils;
import com.aviator.ketty.verify.VerificationTest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.script.ScriptException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class TestServiceImpl implements TestService {


    /**
     * 测试service 具体请自己添加  传入 paramMap 的模板是  {"name":"我是zbdx355"}
     *
     * @param paramMap 脚本需要参数
     * @return
     * @throws IOException
     */
    @Override
    public JsonResult getParamTest(Map<String, Object> paramMap) {
        try {
            if (ObjectUtils.isEmpty(paramMap) || ObjectUtils.isEmpty(paramMap.get("path"))) {
                throw new ScriptException("参数为空或者脚本路径为空");
            }
            // 表达式   Ambitious goals
            String expression = FileUtils.loadResourceFileAsString("/examples/1001241-test.av");

            List<AbstractAviatorRule> calRuleList = VerificationTest.buildCalRules(1L, expression);
            RuleChain ruleChain = new DefaultRuleChain(calRuleList);

            // 执行计算脚本逻辑
            List<AbstractAviatorRule> response = new ArrayList<>();
            ruleChain.matchRule(new HashMap<>(), response);
            AbstractAviatorRule abstractAviatorRule = response.get(0);
            AviatorResult result = abstractAviatorRule.getResult();

            return JsonResult.buildSuccess(result);
        } catch (Exception e) {
            throw new RuntimeException("未知错误" + e);
        }
    }

}

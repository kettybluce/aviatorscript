package com.aviator.ketty.verify;import com.aviator.ketty.pojo.AttrSpecEntityRequest;import com.aviator.ketty.pojo.ProductSearchSkuInfo;import com.aviator.ketty.rule.AbstractAviatorRule;import com.aviator.ketty.rule.CalculatorAviatorRule;import com.google.gson.Gson;import java.util.ArrayList;import java.util.HashMap;import java.util.List;import java.util.Map;/** * @Author ketty bluce * @Create 2023/6/13 * @Version 1.0 */public class VerificationTest {    //  格式化工具    private static final Gson gson = new Gson();    // 封装处理规则脚本    public static List<AbstractAviatorRule> buildCalRules(Long ruleId, String expresses) {        // 规则对象        AbstractAviatorRule claRule = new CalculatorAviatorRule();        // 规则id        claRule.setRuleId(ruleId);        // 规则表达式        claRule.setExpression(expresses);        // 规则对象集合        List<AbstractAviatorRule> rules = new ArrayList<>();        rules.add(claRule);        return rules;    }    private static Map<String, Object> buildParamSpecMap(ProductSearchSkuInfo productSearchSkuInfo, List<AttrSpecEntityRequest> attrSpec, List<AttrSpecEntityRequest> genSpec) {        Map<String, Object> specMap = new HashMap<>();        Integer D = null;        // 轴径        specMap.put("specType", D);        // 选型信息        specMap.put("productSearchSkuInfo", productSearchSkuInfo);        // 输入性        specMap.put("attrSpec", attrSpec);        // 点选型        specMap.put("genSpec", genSpec);        return specMap;    }}
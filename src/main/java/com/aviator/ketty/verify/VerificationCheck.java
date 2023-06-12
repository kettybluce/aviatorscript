package com.aviator.ketty.verify;import com.aviator.ketty.pojo.Rule;import com.aviator.ketty.rule.*;import com.aviator.ketty.utils.CheckBasesType;import com.googlecode.aviator.AviatorEvaluator;import com.googlecode.aviator.Expression;import java.io.IOException;import java.util.ArrayList;import java.util.HashMap;import java.util.List;import java.util.Map;/** * @Author ketty bluce * @Create 2023/6/12 * @Version 1.0 */public class VerificationCheck {    public static void main(String[] args) throws IOException {        Rule rule = new Rule();        // 组装参数        Map<String, Object> checkParam = new HashMap<>();        Expression exp = AviatorEvaluator.getInstance().compileScript("examples/1001241.ev");        // 封装处理规则脚本        List<AbstractAviatorRule> checkRuleList = buildCalRules(rule.getRuleId(), rule.getExpression());        RuleChain ruleChain = new DefaultRuleChain(checkRuleList);        // 新规则集合        List<AbstractAviatorRule> response = new ArrayList<>();        // 参数 + 规则脚本集合 进行执行操作        ruleChain.matchRule(checkParam, response);        // 第一个脚本        AbstractAviatorRule abstractAviatorRule = response.get(0);        // 表达式执行结果        AviatorResult result = abstractAviatorRule.getResult();        // 结果如果成功        if (result.isSuccess()) {            // 返回对象 true / false            Object res = result.getResult();            // 返回对象 true / false            String toStr = String.valueOf(res);            // 判断执行成功是否            boolean mark = CheckBasesType.isBoolean(toStr);            // 执行失败            if (!mark) {                // 报错错误信息                System.out.println(toStr);            }        }    }    // 封装处理规则脚本    public static List<AbstractAviatorRule> buildCalRules(Long ruleId, String expresses) {        // 规则对象        AbstractAviatorRule claRule = new CalculatorAviatorRule();        // 规则id        claRule.setRuleId(ruleId);        // 规则表达式        claRule.setExpression(expresses);        // 规则对象集合        List<AbstractAviatorRule> rules = new ArrayList<>();        rules.add(claRule);        return rules;    }}
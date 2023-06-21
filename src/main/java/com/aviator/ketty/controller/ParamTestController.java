package com.aviator.ketty.controller;import com.aviator.ketty.core.JsonResult;import com.aviator.ketty.rule.AviatorResult;import com.aviator.ketty.service.RuleService;import com.aviator.ketty.service.TestService;import io.swagger.annotations.Api;import io.swagger.annotations.ApiOperation;import org.springframework.web.bind.annotation.PostMapping;import org.springframework.web.bind.annotation.RequestBody;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RestController;import javax.annotation.Resource;import java.util.List;import java.util.Map;/** * @Author ketty bluce * @Create 2023/6/15 * @Version 1.0 */@Api(tags = "规则脚本校验")@RestController@RequestMapping("/api/v1/param")public class ParamTestController {    @Resource    private TestService testService;    @Resource    private RuleService ruleService;    @ApiOperation(value = "脚本计算")    @PostMapping("count")    public JsonResult<Object> getCountTest(@RequestBody Map<String, Object> paramMap) {        JsonResult paramTest = testService.getParamTest(paramMap);        return JsonResult.buildSuccess(paramTest);    }    @ApiOperation(value = "验证脚本")    @PostMapping("验证脚本")    public JsonResult<List<AviatorResult>> getParamTest(@RequestBody Map<String, Object> paramMap) {        JsonResult<List<AviatorResult>> paramTest = ruleService.VerificationCheck(paramMap);        return paramTest;    }}
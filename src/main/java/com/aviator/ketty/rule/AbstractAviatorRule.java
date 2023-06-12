package com.aviator.ketty.rule;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
@ApiModel(value = "AbstractAviatorRule", description = "脚本规则")
public abstract class AbstractAviatorRule {

    @ApiModelProperty(value = "规则id主键")
    private Long ruleId;

    @ApiModelProperty(value = "规则表达式")
    private String expression;

    @ApiModelProperty(value = "表达式执行结果")
    private AviatorResult result;


    public AbstractAviatorRule(){}

    public AbstractAviatorRule(Long ruleId, String expression){
        this.ruleId = ruleId;
        this.expression = expression;
    }

    /***
     * 执行规则表达式
     * @param param
     * @param response：表达式执行结果
     */
    public abstract void execute(Map<String,Object> param, List<AbstractAviatorRule> response);
}

package com.aviator.ketty.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel(value = "Rule对象", description = "规则对象")
@TableName(value = "goods_rule")
public class Rule {

    @ApiModelProperty(value = "规则Id")
    private Long ruleId;

    @ApiModelProperty(value = "spu编码")
    private String spu;

    @ApiModelProperty(value = "规则类型：10->计算脚本，20->验证脚本")
    private Integer ruleType;

    @ApiModelProperty(value = "表达式")
    private String expression;

    @ApiModelProperty(value = "是否禁用改规则：0->启用，1->禁用")
    private Integer enable;

    @ApiModelProperty(value = "不满足该规则时提示用户的信息")
    private String errMsg;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;

    @ApiModelProperty(value = "创建人")
    private String createBy;

    @ApiModelProperty(value = "更新人")
    private String updateBy;

    @ApiModelProperty(value = "备注")
    private String remark;
}

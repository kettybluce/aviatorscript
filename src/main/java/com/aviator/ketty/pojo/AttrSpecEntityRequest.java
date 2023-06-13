package com.aviator.ketty.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

@Data
@ApiModel(value = "AttrSpecEntityRequest对象", description = "属性范围")
public class AttrSpecEntityRequest {

    @ApiModelProperty("属性Id")
    private Integer attrSpecId;

    @ApiModelProperty("英文属性名称")
    private String enSpecName;

    @ApiModelProperty("属性值Id")
    private Integer attrSpecValueId;

    @ApiModelProperty("输入型属性填范围内的值")
    private BigDecimal attrSpecValue;

}

package com.aviator.ketty.pojo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class AppendAttrSpecEntityRequest {
    @ApiModelProperty("属性Id")
    private Integer attrSpecId;

    @ApiModelProperty("英文属性名称")
    private String enSpecName;

    @ApiModelProperty("属性值Id")
    private Integer attrSpecValueId;

    @ApiModelProperty("输入型属性填范围内的值")
    private String attrSpecValue;

//    @ApiModelProperty("追加工属性顺序；数字越小优先级越高，排列在前")
//    private Integer genOrder;
}

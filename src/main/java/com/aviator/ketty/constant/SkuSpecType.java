package com.aviator.ketty.constant;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "SkuSpecType", description = "sku属性类型常量")
public class SkuSpecType {

    @ApiModelProperty("不参与商详页面型号生成或筛选的属性")
    public static final Integer NONTYPE = -1;

    @ApiModelProperty("非追加工属性类型 0->筛选不生成型号")
    public static final Integer OPTIONALTYPE = 0;

    @ApiModelProperty("非追加工属性类型 1->输入生成型号")
    public static final Integer INPUTTYPE = 1;

    @ApiModelProperty("非追加工属性类型 2->点选生成型号")
    public static final Integer GENOPTIONALTYPE = 2;

    @ApiModelProperty("追加工属性类型 10->输入生成型号")
    public static final Integer APPENDINPUTTYPE = 10;

    @ApiModelProperty("追加工属性类型 20->点选生成型号")
    public static final Integer APPENDGENTYPE = 20;

    @ApiModelProperty("英文名称是否显示在型号段 0->显示")
    public static final Integer ISDISPLAY = 0;

    @ApiModelProperty("英文名称是否显示在型号段 1->不显示")
    public static final Integer ISHIDE = 1;

    @ApiModelProperty("是否标品 0：标品")
    public static final Integer STANDARD = 0;

    @ApiModelProperty("是否标品 1：非标品")
    public static final Integer NONSTANDARD = 1;

    @ApiModelProperty("是否追加工属性 100->非追加工")
    public static final Integer NONAPPEND = 100;

    @ApiModelProperty("是否追加工属性 200->追加工")
    public static final Integer APPEND = 200;

    @ApiModelProperty("型号串中的type")
    public static final String MODEL_TYPE = "type";

    @ApiModelProperty("型号串中的D")
    public static final String MODEL_D = "D";
}

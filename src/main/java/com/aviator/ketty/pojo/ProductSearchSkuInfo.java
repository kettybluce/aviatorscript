package com.aviator.ketty.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * 产品型号信息
 */
@Data
@ApiModel(value = "ProductSearchSkuInfo对象", description = "产品型号信息")
public class ProductSearchSkuInfo {

    @ApiModelProperty(value = "sku编码")
    private String sku;

    @ApiModelProperty(value = "型号名称")
    private String modelName;

    @ApiModelProperty(value = "系列类型")
    private String series;

    @ApiModelProperty(value = "是否标品 0：标品,1：加工品")
    private Integer skuSign;

    @ApiModelProperty(value = "当前型号具有的属性信息")
    private List<ModelSpec> specList;
}

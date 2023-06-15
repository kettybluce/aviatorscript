package com.aviator.ketty.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Objects;

/***
 * 型号属性值信息
 */
@Data
@ApiModel(value = "ModelSpecValue对象", description = "筛选以及可选型属性的集合")
public class ModelSpecValue {

    /**属性值Id*/
    @ApiModelProperty(value = "属性值Id")
    private Integer specValueId;

    /**属性值*/
    @ApiModelProperty(value = "属性值")
    private String specValue;

    /**排序*/
    @ApiModelProperty(value = "排序")
    private Integer specOrder;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ModelSpecValue)) return false;
        ModelSpecValue that = (ModelSpecValue) o;
        return Objects.equals(specValueId, that.specValueId) && Objects.equals(specValue, that.specValue);
    }

    @Override
    public int hashCode() {
        return Objects.hash(specValueId, specValue);
    }
}

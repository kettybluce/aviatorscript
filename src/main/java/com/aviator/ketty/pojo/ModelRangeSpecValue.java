package com.aviator.ketty.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Objects;

/***
 * 型号属性值范围信息
 */
@Data
@ApiModel(value = "ModelRangeSpecValue对象", description = "型号属性值范围信息")
public class ModelRangeSpecValue {

    @ApiModelProperty(value = "属性值Id")
    private Integer specValueId;


    @ApiModelProperty(value = "属性值,当属性为输入型参数时，表示用户输入的值")
    private String specValue;


    @ApiModelProperty(value = "输入型属性值最小值")
    private BigDecimal minValue;


    @ApiModelProperty(value = "输入型属性值最大值")
    private BigDecimal maxValue;


    @ApiModelProperty(value = "输入型属性值步长")
    private BigDecimal stepValue;


    @ApiModelProperty(value = "输入型属性单位")
    private String unit;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ModelRangeSpecValue)) return false;
        ModelRangeSpecValue that = (ModelRangeSpecValue) o;
        return Objects.equals(specValueId, that.specValueId) && Objects.equals(specValue, that.specValue) && Objects.equals(minValue, that.minValue) && Objects.equals(maxValue, that.maxValue) && Objects.equals(stepValue, that.stepValue) && Objects.equals(unit, that.unit);
    }

    @Override
    public int hashCode() {
        return Objects.hash(specValueId, specValue, minValue, maxValue, stepValue, unit);
    }
}

package com.aviator.ketty.pojo;

import com.alibaba.fastjson.annotation.JSONField;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@ApiModel(value = "ModelSpec对象", description = "模型规范")
public class ModelSpec {
    /**
     * 属性id
     */
    @ApiModelProperty(value = "属性id")
    private Integer specId;

    /**
     * 属性中文名称
     */
    @ApiModelProperty(value = "属性中文名称")
    private String  chSpecName;

    /**
     * 属性英文名称
     */
    @ApiModelProperty(value = "属性英文名称")
    private String enSpecName;
    /**
     * 属性可选还是输入，可选还是输入 0->可选   1->输入  2->具备可选和输入
     */

    @ApiModelProperty(value = "属性可选还是输入，可选还是输入 0->可选   1->输入  2->具备可选和输入")
    private Integer specType;

    /**
     * 属于形状筛选/条件筛选/不参加选型 0：形状筛选 1：条件筛选 2:不参加选型
     */
    @ApiModelProperty(value = "属于形状筛选/条件筛选/不参加选型 0：形状筛选 1：条件筛选 2:不参加选型")
    private Integer isConditionShape;

    /**
     * 是否追加工属性：0->非追加工，1->追加工
     */
    @ApiModelProperty(value = "是否追加工属性：0->非追加工，1->追加工")
    private Integer isAppend;


    //排序
    @ApiModelProperty(value = "排序")
    @JSONField(serialize=false)
    private Integer specOrder;


    /**
     * 型号生成顺序
     */
    @ApiModelProperty(value = "型号生成顺序")
    private Integer selectionOrder;


    /**
     * 英文名称是否显示在型号段：0->显示，1->不显示
     */
    @ApiModelProperty(value = "英文名称是否显示在型号段：0->显示，1->不显示")
    private Integer isShow;

    /**
     * 输入型属性的集合
     */
    @ApiModelProperty(value = "输入型属性的集合")
    private List<ModelRangeSpecValue> specRangeList;

    /**
     * 筛选以及可选型属性的集合
     */
    @ApiModelProperty(value = "筛选以及可选型属性的集合")
    private List<ModelSpecValue> specValueList;

    public List<ModelRangeSpecValue> getSpecRangeList() {
        return specRangeList;
    }

    public void setSpecRangeList(List<ModelRangeSpecValue> specRangeList) {
        this.specRangeList = specRangeList;
    }

    public List<ModelSpecValue> getSpecValueList() {
        return specValueList;
    }

    public void setSpecValueList(List<ModelSpecValue> specValueList) {
        this.specValueList = specValueList;
    }
}

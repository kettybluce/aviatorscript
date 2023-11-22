package com.aviator.ketty.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * 热销品牌
 *
 * @author ketty bluce
 * @date 2023-11-14 14:48:43
 */
@Data
@TableName("goods_brand_hot")
public class GoodsBrandHot{

/**
 * 主键id
 */
		@TableId
	@ApiModelProperty(value = "主键id")
private Long id;
/**
 * 分类id
 */
	@ApiModelProperty(value = "分类id")
private Long classificationId;
/**
 * 品牌id
 */
	@ApiModelProperty(value = "品牌id")
private Long brandId;
/**
 * 品牌名称
 */
	@ApiModelProperty(value = "品牌名称")
private String brandName;
/**
 * 品牌排序
 */
	@ApiModelProperty(value = "品牌排序")
private Integer brandSort;
/**
 * 品牌图片
 */
	@ApiModelProperty(value = "品牌图片")
private String brandPicture;
/**
 * 授权经销品牌
 */
	@ApiModelProperty(value = "授权经销品牌")
private Integer authorizedBrandSort;
/**
 * 备注
 */
	@ApiModelProperty(value = "备注")
private String remark;
/**
 *
 */
	@ApiModelProperty(value = "")
private Date createTime;
/**
 *
 */
	@ApiModelProperty(value = "")
private Date updateTime;
/**
 *
 */
	@ApiModelProperty(value = "")
private String createMemberId;
/**
 *
 */
	@ApiModelProperty(value = "")
private String updateMemberId;
/**
 *
 */
	@ApiModelProperty(value = "")
private String createMemberName;
/**
 *
 */
	@ApiModelProperty(value = "")
private String updateMemberName;

}

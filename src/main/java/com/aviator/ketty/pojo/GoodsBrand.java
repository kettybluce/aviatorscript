package com.aviator.ketty.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * 商品品牌
 *
 * @author ketty bluce
 * @date 2023-11-14 14:52:32
 */
@Data
@TableName("goods_brand")
public class GoodsBrand {

	/**
	 *
	 */
	@TableId
	@ApiModelProperty(value = "")
	private Long id;
	/**
	 * 首字母
	 */
	@ApiModelProperty(value = "首字母")
	private String initial;
	/**
	 * 品牌英文名称
	 */
	@ApiModelProperty(value = "品牌英文名称")
	private String brandEn;
	/**
	 * 品牌中文名称
	 */
	@ApiModelProperty(value = "品牌中文名称")
	private String brandCh;
	/**
	 * 品牌所在地
	 */
	@ApiModelProperty(value = "品牌所在地")
	private String brandPlace;
	/**
	 * 品牌图片
	 */
	@ApiModelProperty(value = "品牌图片")
	private String thumbnail;

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

package com.aviator.ketty.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * 热门品牌分类
 *
 * @author ketty bluce
 * @date 2023-11-14 14:48:43
 */
@Data
@TableName("goods_brand_classification")
public class GoodsBrandClassification {

	/**
	 * 主键
	 */
	@TableId
	@ApiModelProperty(value = "主键")
	private Long id;
	/**
	 * 列表code
	 */
	@ApiModelProperty(value = "列表code")
	private String listCode;
	/**
	 * 列表名称
	 */
	@ApiModelProperty(value = "列表名称")
	private String listName;
	/**
	 * 列表排序
	 */
	@ApiModelProperty(value = "列表排序")
	private Integer listSort;
	/**
	 * 列表id
	 */
	@ApiModelProperty(value = "列表id")
	private Long listId;
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

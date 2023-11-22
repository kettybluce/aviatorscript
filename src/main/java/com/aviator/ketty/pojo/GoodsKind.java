package com.aviator.ketty.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * 商品分类字典
 *
 * @author ketty bluce
 * @date 2023-11-14 15:57:18
 */
@Data
@TableName("goods_kind")
public class GoodsKind {

	/**
	 *
	 */
	@TableId
	@ApiModelProperty(value = "")
	private Long id;
	/**
	 * 分类图片路径
	 */
	@ApiModelProperty(value = "分类图片路径")
	private String pictureUrls;
	/**
	 * 默认图标
	 */
	@ApiModelProperty(value = "默认图标")
	private String defaultIcon;
	/**
	 * 交互图标
	 */
	@ApiModelProperty(value = "交互图标")
	private String interactionIcon;
	/**
	 * 品名图片
	 */
	@ApiModelProperty(value = "品名图片")
	private String descriptionUrls;
	/**
	 * 分类名称
	 */
	@ApiModelProperty(value = "分类名称")
	private String kind;
	/**
	 * 父id，第一级分类为0
	 */
	@ApiModelProperty(value = "父id，第一级分类为0")
	private Long parentId;
	/**
	 * 层级
	 */
	@ApiModelProperty(value = "层级")
	private Integer kindLevel;
	/**
	 * 排序
	 */
	@ApiModelProperty(value = "排序")
	private Integer sortOrder;
	/**
	 * 分类编码
	 */
	@ApiModelProperty(value = "分类编码")
	private String kindCode;
	/**
	 * 共用商品标记
	 */
	@ApiModelProperty(value = "共用商品标记")
	private String publicProductSign;
	/**
	 * 分类说明（备注）
	 */
	@ApiModelProperty(value = "分类说明（备注）")
	private String remark;
	/**
	 * 标题
	 */
	@ApiModelProperty(value = "标题")
	private String title;
	/**
	 * 描述
	 */
	@ApiModelProperty(value = "描述")
	private String description;
	/**
	 * 检索关键字
	 */
	@ApiModelProperty(value = "检索关键字")
	private String keywords;
	/**
	 * 模板0：简单 1：复杂
	 */
	@ApiModelProperty(value = "模板0：简单 1：复杂")
	private Integer template;
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

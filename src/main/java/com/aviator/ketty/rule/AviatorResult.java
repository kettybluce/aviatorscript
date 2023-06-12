package com.aviator.ketty.rule;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(value = "AviatorResult", description = "脚本响应结果")
public class AviatorResult {
    @ApiModelProperty(value = "执行状态")
    private boolean success;

    @ApiModelProperty(value = "返回对象 true / false")
    private Object result;

    public AviatorResult(){}

    public AviatorResult(boolean success){
        this(success, null);
    }

    public AviatorResult(boolean success, Object result){
        this.success = success;
        this.result = result;
    }
}

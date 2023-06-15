package com.aviator.ketty.exception;


import com.aviator.ketty.core.BaseErrorCodeEnum;

/**
 * 商品自定义业务异常类
 *
 * @author yunxian
 */
public class ScriptException extends BaseBizException {

    public ScriptException(String errorMsg) {
        super(errorMsg);
    }

    public ScriptException(String errorCode, String errorMsg) {
        super(errorCode, errorMsg);
    }

    public ScriptException(BaseErrorCodeEnum baseErrorCodeEnum) {
        super(baseErrorCodeEnum);
    }

    public ScriptException(String errorCode, String errorMsg, Object... arguments) {
        super(errorCode, errorMsg, arguments);
    }

    public ScriptException(BaseErrorCodeEnum baseErrorCodeEnum, Object... arguments) {
        super(baseErrorCodeEnum, arguments);
    }
}

package com.aviator.ketty.core;


import lombok.Data;

import java.io.Serializable;

/**
 * 统一结果响应
 * @author yunxian
 * @param <T>
 */
@Data
public class JsonResult<T> implements Serializable {
    /**
     * 请求成功
     */
    private static final boolean REQUEST_SUCCESS = true;

    /**
     * 请求失败
     */
    private static final boolean REQUEST_FAIL = false;

    /**
     * 默认错误码
     */
    private static final String DEFAULT_ERROR_CODE = "-1";

    /**
     * 请求是否成功
     */
    private Boolean success;

    /**
     * 业务数据
     */
    private T data;

    /**
     * 错误码
     */
    private String errorCode;

    /**
     * 错误提示语
     */
    private String errorMessage;

    /**
     * 总条数
     */
    private Long total;

    /**
     * 总页数
     */
    private Long pageAll;

    public JsonResult() {
    }

    public JsonResult(Boolean success, T data, String errorCode, String errorMessage) {
        this.success = success;
        this.data = data;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    public JsonResult(Boolean success, T data, String errorCode, String errorMessage,Long total,Long pageAll) {
        this.success = success;
        this.data = data;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.total=total;
        this.pageAll=pageAll;
    }


    /**
     * 成功，不用返回数据
     *
     * @return
     */
    public static <T> JsonResult<T> buildSuccess() {
        return new JsonResult<>(REQUEST_SUCCESS, null, null, null);
    }

    /**
     * 成功，返回数据
     *
     * @param data
     * @return
     */
    public static <T> JsonResult<T> buildSuccess(T data) {
        return new JsonResult<>(REQUEST_SUCCESS, data, null, null);
    }

    /**
     * 成功，返回数据+分页
     *
     * @param data
     * @return
     */
    public static <T> JsonResult<T> buildSuccess(T data,Long total,Long pageAll) {
        return new JsonResult<>(REQUEST_SUCCESS, data, null, null,total,pageAll);
    }


    /**
     * 失败，固定状态码
     *
     * @param errorMsg
     * @return
     */
    public static <T> JsonResult<T> buildError(String errorMsg) {
        return new JsonResult<>(REQUEST_FAIL, null, DEFAULT_ERROR_CODE, errorMsg);
    }

    /**
     * 失败，自定义错误码和信息
     *
     * @param errorCode 错误码
     * @param errorMsg  错误提示
     * @return
     */
    public static <T> JsonResult<T> buildError(String errorCode, String errorMsg) {
        return new JsonResult<>(REQUEST_FAIL, null, errorCode, errorMsg);
    }

    /**
     * 失败，枚举类定义错误码和信息
     *
     * @param baseErrorCodeEnum
     * @return
     */
    public static <T> JsonResult<T> buildError(BaseErrorCodeEnum baseErrorCodeEnum) {
        return new JsonResult<>(REQUEST_FAIL, null, baseErrorCodeEnum.getErrorCode(), baseErrorCodeEnum.getErrorMsg());
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public Long getTotal(){return total;}
    public void setTotal(Long total){this.total=total;}

    public Long getPageAll(){return pageAll;}
    public void setPageAll(Long pageAll){this.pageAll=pageAll;}
}

package com.aviator.ketty.exception;


import com.aviator.ketty.core.BaseErrorCodeEnum;

/**
 * 系统通用的业务异常错误码枚举
 *
 * @author yunxian
 */
public enum CommonErrorCodeEnum implements BaseErrorCodeEnum {


    // =========== 系统级别未知异常 =========

    /**
     * 系统未知错误
     */
    SYSTEM_UNKNOWN_ERROR("-1", "系统未知错误"),

    // =========== 客户端异常 =========

    /**
     * 客户端HTTP请求方法错误
     * org.springframework.web.HttpRequestMethodNotSupportedException
     */
    CLIENT_HTTP_METHOD_ERROR("1001", "客户端HTTP请求方法错误"),

    /**
     * 客户端request body参数错误
     * 主要是未能通过Hibernate Validator校验的异常处理
     * <p>
     * org.springframework.web.bind.MethodArgumentNotValidException
     */
    CLIENT_REQUEST_BODY_CHECK_ERROR("1002", "客户端请求体参数校验不通过"),

    /**
     * 客户端@RequestBody请求体JSON格式错误或字段类型错误
     * org.springframework.http.converter.HttpMessageNotReadableException
     * <p>
     * eg:
     * 1、参数类型不对:{"test":"abc"}，本身类型是Long
     * 2、{"test":}  test属性没有给值
     */
    CLIENT_REQUEST_BODY_FORMAT_ERROR("1003", "客户端请求体JSON格式错误或字段类型不匹配"),

    /**
     * 客户端@PathVariable参数错误
     * 一般是类型不匹配，比如本来是Long类型，客户端却给了一个无法转换成Long字符串
     * org.springframework.validation.BindException
     */
    CLIENT_PATH_VARIABLE_ERROR("1004", "客户端URL中的参数类型错误"),

    /**
     * 客户端@RequestParam参数校验不通过
     * 主要是未能通过Hibernate Validator校验的异常处理
     * javax.validation.ConstraintViolationException
     */
    CLIENT_REQUEST_PARAM_CHECK_ERROR("1005", "客户端请求参数校验不通过"),

    /**
     * 客户端@RequestParam参数必填
     * 入参中的@RequestParam注解设置了必填，但是客户端没有给值
     * javax.validation.ConstraintViolationException
     */
    CLIENT_REQUEST_PARAM_REQUIRED_ERROR("1006", "客户端请求缺少必填的参数"),


    // =========== 服务端异常 =========

    /**
     * 通用的业务方法入参检查错误
     * java.lang.IllegalArgumentException
     */
    SERVER_ILLEGAL_ARGUMENT_ERROR("2001", "业务方法参数检查不通过"),


    // =========== 业务系异常 =========

    CATEGORIES_SUCCESS("100000", "删除成功"),
    CATEGORIES_FAIL("100001", "删除失败"),
    CATEGORIES_CHILD_EXITS("100002", "存在下级分类不可删除/修改"),
    CATEGORIES_GOODS_EXITS("100003", "存在商品不可删除/修改"),
    INVALID_GOODS("100004", "存在产品不能作废"),
    IS_INVALID("100005", "商品已作废不可上架/下架"),
    PROPERTY_VALUE_EXITS("100006", "存在属性值不可删除/修改"),
    IS_EXIST("100007", "已存在,不能添加"),
    IS_EXIST_PHONE("100008", "用户不存在"),
    SEND_SMS_FAIL("100009", "操作过于频繁，请一分钟之后再次点击发送"),
    USER_IS_NULL("100010", "用户名不能为空"),
    PASSWORD_IS_NULL("100011", "验证码不能为空"),
    PASSWORD_IS_ERROR("100012", "短信验证码错误"),
    PASSWORD_IS_OUT("100013", "短信验证码不存在或已过期"),
    LOING_IS_ERROR("100014", "登录状态异常，请重新登录"),
    LOING_IS_NULL("100015", "未登录"),
    SEND_SMS_FAIL_HPUR("100016", "操作过于频繁，请一小时之后再次点击发送"),
    SEND_SMS_FAIL_DAY("100017", "操作过于频繁，请一天之后再次点击发送"),
    SEND_SMS_ERROR("100018", "短信获取异常"),
    USER_PWD_ERROR("100019", "用户名或者密码错误"),
    PARAM_ERROR("100019", "参数错误"),
    ;

    private String errorCode;

    private String errorMsg;

    CommonErrorCodeEnum(String errorCode, String errorMsg) {
        this.errorCode = errorCode;
        this.errorMsg = errorMsg;
    }

    @Override
    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    @Override
    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

}

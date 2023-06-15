package com.aviator.ketty.exception;


import com.aviator.ketty.core.JsonResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MultipartException;

import java.util.List;

/**
 * 参数校验错误返回信息
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public JsonResult exceptionHandler(MethodArgumentNotValidException methodArgumentNotValidException) throws Exception {
        StringBuilder message = getStringBuilder(methodArgumentNotValidException);
        return JsonResult.buildError(message.toString());
    }

    private static StringBuilder getStringBuilder(MethodArgumentNotValidException methodArgumentNotValidException) {
        List<FieldError> fieldErrors = methodArgumentNotValidException.getBindingResult().getFieldErrors();
        StringBuilder message = new StringBuilder();
        for (int i = 0; i < fieldErrors.size(); i++) {
            message.append(fieldErrors.get(i).getDefaultMessage());
            if (i < fieldErrors.size() - 1) {
                message.append(";");
            }
        }
        return message;
    }

    @ExceptionHandler(MultipartException.class)
    public JsonResult MultipartExceptionHandler(MethodArgumentNotValidException methodArgumentNotValidException) throws Exception {
        StringBuilder message = getStringBuilder(methodArgumentNotValidException);
        return JsonResult.buildError("请上传文件类型" + message);
    }

}

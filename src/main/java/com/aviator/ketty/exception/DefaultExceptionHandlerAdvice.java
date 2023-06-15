package com.aviator.ketty.exception;


import com.aviator.ketty.core.JsonResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class DefaultExceptionHandlerAdvice {

    /**
     * token 全局异常处理
     *
     * @return
     */
    @ExceptionHandler(value = {ScriptException.class})
    public JsonResult SaintException(ScriptException sainException) {
        return JsonResult.buildError(sainException.getErrorMsg());
    }

}

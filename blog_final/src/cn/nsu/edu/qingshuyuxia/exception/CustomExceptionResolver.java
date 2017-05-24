package cn.nsu.edu.qingshuyuxia.exception;


import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by cocos on 2017/2/7.
 */
public class CustomExceptionResolver implements HandlerExceptionResolver{

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        CustomException customException = null;
        Exception exception = null;
        if(e instanceof CustomException){
            customException = (CustomException)e;
        }else{
            customException = new CustomException("未知错误!");
        }
        //错误信息
        String message = customException.getMessage();

        ModelAndView modelAndView = new ModelAndView();

        //错误信息传到页面
        modelAndView.addObject("message",message);
        modelAndView.setViewName("error");

        return modelAndView;
    }
}

package com.createros.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SysExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        DefineException defineException = null;

        if (e instanceof DefineException){
            defineException = (DefineException)e;
        }else{
            defineException = new DefineException("系统正在维护，给您带来不便非常抱歉");
        }

        ModelAndView mv = new ModelAndView();
        mv.addObject("exception",defineException);
        mv.setViewName("exception.jsp");

        return mv;
    }
}

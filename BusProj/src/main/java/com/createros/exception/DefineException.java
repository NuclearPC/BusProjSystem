package com.createros.exception;

public class DefineException extends Exception{
    private String message; //定义信息

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public DefineException(String message) {
        this.message = message;
    }
}

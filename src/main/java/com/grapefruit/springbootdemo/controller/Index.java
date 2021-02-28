package com.grapefruit.springbootdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author 柚子苦瓜茶  Grapefruit
 * @version 1.0
 * @ModifyTime 2020/10/14 07:17:44
 */
@RestController
public class Index {

    @GetMapping("/")
    public String toIndex(){

        String localTime = getLocalTime();
        return localTime + " hello Grapefruit";
    }

    public String getLocalTime(){
        String pattern = "yyyy/MM/dd HH:mm:ss";
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(pattern);
        return LocalDateTime.now().format(dateTimeFormatter);
    }
}

package com.lvhong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lvhong
 * @version 1.0
 * @date 2020/3/25
 * @description
 **/
@Controller
public class LoginOnController {
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String loadinfo(Model model){
        return "/index";
    }
}

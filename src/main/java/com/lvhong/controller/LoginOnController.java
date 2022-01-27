package com.lvhong.controller;

import com.alibaba.fastjson.JSONObject;
import com.lvhong.exception.DataException;
import com.lvhong.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author lvhong
 * @version 1.0
 * @date 2020/3/25
 * @description
 **/
@Controller
public class LoginOnController {

    @Resource(name = "userService")
    private UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loadInfo(Model model) {
        return "/loadInfo";
    }

    @RequestMapping("/loadInfo")
    @ResponseBody
    public String logOn(@RequestParam("userName") String userName, @RequestParam("password") String password) {
        try {
          //  userService.checkUserLogin(userName, password);
        }catch (DataException e){
            return JSONObject.toJSONString(e);
        }
        return "/homepage";
    }

    @RequestMapping(value = "/homepage", method = RequestMethod.GET)
    public String homgpage() {
        return "/homepage";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "/loadInfo";
    }

    @RequestMapping("/register")
    public String register() {
        return "/userRegister";
    }
}

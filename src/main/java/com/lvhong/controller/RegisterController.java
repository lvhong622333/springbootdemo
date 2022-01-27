package com.lvhong.controller;

import com.alibaba.fastjson.JSONObject;
//import com.lvhong.dao.TmSysUser;
import com.lvhong.exception.DataException;
import com.lvhong.service.UserService;
import com.lvhong.util.MD5Utils;
import com.lvhong.util.SnowflakeIdWorker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.regex.Pattern;

/**
 * @author lvhong
 * @version 1.0
 * @date 2020/4/3
 * @description
 **/
@Controller
public class RegisterController {

    @Resource(name = "userService")
    private UserService userService;

//    @RequestMapping("/onSubmit")
//    @ResponseBody
//    public String onSubmit(@Valid TmSysUser user) {
//        try {
//            //验证手机号码格式是否正确
//            Pattern p = Pattern.compile("^[1][3,4,5,7,8][0-9]{9}$");
//            if(!p.matcher(user.getMobile()).matches()){
//                throw new DataException("mobile", "手机号码格式不正确");
//            }
//            //验证密码格式是否正确
//            Pattern p1 = Pattern.compile("^[0-9A-Za-z]{8,16}$");
//            if(!p1.matcher(user.getUserPwd()).matches()){
//                throw new DataException("password", "密码必须由8到16位的数据和字母组成");
//            }
//            //验证两次密码是否一致
//            if (!user.getUserPwd().equals(user.getUserPwdConfirm())) {
//                throw new DataException("password", "两次密码不一致");
//            }
//            //验证手机号码和用户名是否被占用
//            Integer i = userService.checkUserOrMobile(user);
//            //记录注册信息
//            SnowflakeIdWorker snowflakeIdWorker = new SnowflakeIdWorker(0, 0);
//            Long id = snowflakeIdWorker.nextId();
//            user.setId(id);
//            user.setCreateBy(id);
//            user.setUserPwd(MD5Utils.encrypt(user.getUserName(), user.getUserPwd(), 3));
//            userService.registerUserInfo(user);
//            return "/";
//        } catch (DataException e) {
//            return JSONObject.toJSONString(e);
//        }
//    }
}

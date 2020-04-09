package com.lvhong.service.impl;

import com.lvhong.dao.TmSysUser;
import com.lvhong.exception.DataException;
import com.lvhong.mapper.TmSysUserMapper;
import com.lvhong.service.UserService;
import com.lvhong.util.MD5Utils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author lvhong
 * @version 1.0
 * @date 2020/4/6
 * @description
 **/
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private TmSysUserMapper tmSysUserMapper;

    @Override
    public void registerUserInfo(TmSysUser tmSysUser) {
        tmSysUserMapper.insert(tmSysUser);
    }

    @Override
    public Integer checkUserOrMobile(TmSysUser user) {
        Integer i = tmSysUserMapper.checkUserOrMobile(user.getUserName());
        if (i > 0) {
            throw new DataException("userName", "用户名已经存在");
        }
        i = tmSysUserMapper.checkUserOrMobile(user.getMobile());
        if (i > 0) {
            throw new DataException("mobile", "手机号码已经存在");
        }
        return i;
    }

    @Override
    public void checkUserLogin(String userName, String password) {
        Integer i = tmSysUserMapper.checkUserLogin(userName);
        if (i <= 0) {
            throw new DataException("userName", "用户名不存在");
        }
        Map map = new HashMap();
        map.put("userName", userName);
        map.put("password", MD5Utils.encrypt(userName, password, 3));
        i = tmSysUserMapper.checkPassword(map);
        if (i <= 0) {
            throw new DataException("password", "密码不正确");
        }
    }
}

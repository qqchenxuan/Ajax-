package com.cx.servicelmp;

import com.cx.dao.UserDao;
import com.cx.daolmp.UserDaolmp;
import com.cx.service.UserSevice;
import com.cx.vo.User;

public class UserSevicelmp implements UserSevice {
    //获取dao层对象
    UserDao ud = new UserDaolmp();

    @Override
    public User getuUserInfoSevice(String name) {
        return ud.getUserInfo(name);
    }
}

package com.cx.daolmp;

import com.cx.dao.UserDao;

import com.cx.vo.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaolmp implements UserDao {

    @Override
    public User getUserInfo(String name) {
        //声明储存对象
        User u =null;
        try {
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            //获取连接对象
            Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1/ajax?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&useSSL=false&serverTimezone=GMT%2B8","root","124556");
            //创建sql命令
            String sql = "select * from user where uname like ?";
            //创建sql命令对象
            PreparedStatement ps=conn.prepareStatement(sql);
            //给占位符复制
            ps.setString(1,"%"+name+"%");
            //遍历查询
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               u= new User();
                u.setUid(rs.getInt("uid"));
                u.setUname(rs.getString("uname"));
                u.setPrice(rs.getDouble("price"));
                u.setLoc(rs.getString("loc"));
                u.setLoc(rs.getString("desc"));
            }
        }catch (Exception e){


        }

        return u;
    }



}

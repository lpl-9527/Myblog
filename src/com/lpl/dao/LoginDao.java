package com.lpl.dao;
import com.lpl.util.DbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao{
	public int check(String userName,String userPassword,int identity) {
		DbUtil db=new DbUtil();
        try {
            String sql="SELECT user_id,user_name,user_password FROM user where identity="+identity+" and user_name="+"'"+userName+"'";
            Connection conn=db.getCon();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if(rs.next()){
            	if(userPassword.equals(rs.getString("user_password"))){
            		return rs.getInt("user_id");
            }else 
            	return 0;
        }
        }catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return 0;
	}
	
}
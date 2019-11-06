package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lpl.pojo.User;
import com.lpl.util.DbUtil;
public class AboutDao {
	public User getUserInfo(String userName){
		String username = userName;
		User user = new User();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM user where user_name= "+"'"+username+"'";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
            user.setUserId(rs.getString("user_id"));
            user.setAboutMe(rs.getString("user_JS"));
            user.setUserName(rs.getString("user_name"));
            user.setUserPassword(rs.getString("user_password"));
            user.setUserEmail(rs.getString("user_email"));
            user.setUserRegistrationTime(rs.getDate("user_regis_time"));
            user.setBirthday(rs.getString("user_birthday"));
            user.setUserAge(rs.getString("user_age"));
            user.setUserTel(rs.getString("user_telephone"));
            user.setUserPhoto(rs.getString("user_photo")); 
            user.setUserProfilePhoto(rs.getString("user_picture"));
            user.setUserSex(rs.getString("user_sex"));
            user.setUserQq(rs.getString("user_qq"));
            user.setUserWeChat(rs.getString("user_wechat"));
            user.setUserSig(rs.getString("user_sig"));
            user.setUserHobby(rs.getString("user_hobby"));
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
	}
	public User getUserInfo(int userid){
		User user = new User();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM user where user_id= "+"'"+userid+"'";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
            user.setUserId(rs.getString("user_id"));
            user.setAboutMe(rs.getString("user_JS"));
            user.setUserName(rs.getString("user_name"));
            user.setUserPassword(rs.getString("user_password"));
            user.setUserEmail(rs.getString("user_email"));
            user.setUserRegistrationTime(rs.getDate("user_regis_time"));
            user.setBirthday(rs.getString("user_birthday"));
            user.setUserAge(rs.getString("user_age"));
            user.setUserTel(rs.getString("user_telephone"));
            user.setUserPhoto(rs.getString("user_photo")); 
            user.setUserProfilePhoto(rs.getString("user_picture"));
            user.setUserSex(rs.getString("user_sex"));
            user.setUserQq(rs.getString("user_qq"));
            user.setUserWeChat(rs.getString("user_wechat"));
            user.setUserSig(rs.getString("user_sig"));
            user.setUserHobby(rs.getString("user_hobby"));
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
	}
	public User updateUserInfo(User user){
		DbUtil db=new DbUtil();
        try {
        	String sql="UPDATE  user SET user_picture='"+user.getUserProfilePhoto()+"', user_photo='"+user.getUserPhoto()+"', user_wechat='"+user.getUserWeChat()+"',user_JS='"+user.getAboutMe()+"',user_email='"+user.getUserEmail()+"',user_birthday='"+user.getBirthday()+"',user_age='"+user.getUserAge()+"',user_sex='"+user.getUserSex()+"',user_telephone="+user.getUserTel()+",user_qq='"+user.getUserQq()+"',user_sig='"+user.getUserSig()+"', user_hobby='"+user.getUserHobby()+"'  WHERE user_name='"+user.getUserName()+"'";
        	//System.out.println(user.getUserPhoto());
        	Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
	}
	
	public ArrayList<User> getUsers(){
		ArrayList<User> users=new ArrayList<User>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT user_id,user_name,user_email,permission,user_regis_time  FROM user where identity=0";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	User user = new User();
            	user.setUserId(rs.getString("user_id"));
            	user.setUserName(rs.getString("user_name"));
            	user.setUserEmail(rs.getString("user_email"));
            	user.setUserPermisson(rs.getInt("permission"));
            	user.setUserRegistrationTime(rs.getDate("user_regis_time"));
            	users.add(user);
            }
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
	}
	public void updateUserPermission(int userID,int permission){
		DbUtil db=new DbUtil();
        try {
        	String sql="UPDATE  user SET permission="+permission+" where user_id="+userID+"";
        	Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}

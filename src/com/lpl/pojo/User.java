package com.lpl.pojo;
import java.util.Date;
public class User {
		private String userTel;
	    private String userId;
	    private String userName;
	    private String userPassword;
	    private String userEmail;
	    private Date userRegistrationTime;
	    private String Birthday;
	    private String userAge;
	    private String userPhoto;
	    private String userSex;
	    private String userQq;
	    private String userWeChat;
	    private String usersig;
	    private String userHobby;
	    private String userPicture;
	    private String aboutme;
	    private String Permisson;
	    //权限
	    public String getUserPermisson() {
	        return Permisson;
	    }

	    public void setUserPermisson(int Permisson) {
	    	//this.Permisson = Permisson;
	    	if(Permisson==0)
	    		this.Permisson = "默认权限";
	    	else if(Permisson==1)
	    		this.Permisson = "禁止发文";
	    	else if(Permisson==2)
	    		this.Permisson = "禁止评论";
	    	else if(Permisson==3)
	    		this.Permisson = "账户封停";
	    	
	    }
	  //关于我
	    public String getAboutMe() {
	        return aboutme;
	    }

	    public void setAboutMe(String aboutme) {
	        this.aboutme = aboutme;
	    }
	    //电话
	    public String getUserTel() {
	        return userTel;
	    }

	    public void setUserTel(String userTel) {
	        this.userTel = userTel;
	    }
	    //年龄
	    public String getUserAge() {
	        return userAge;
	    }

	    public void setUserAge(String userAge) {
	        this.userAge = userAge;
	    }
	    //爱好
	    public String getUserHobby() {
	        return userHobby;
	    }

	    public void setUserHobby(String userHobby) {
	        this.userHobby = userHobby;
	    }
	    //个性签名
	    public String getUserSig() {
	        return usersig;
	    }

	    public void setUserSig(String usersig) {
	        this.usersig = usersig;
	    }
	    //微信
	    public String getUserWeChat() {
	        return userWeChat;
	    }

	    public void setUserWeChat(String userWeChat) {
	        this.userWeChat = userWeChat;
	    }
	    //QQ
	    public String getUserQq() {
	        return userQq;
	    }

	    public void setUserQq(String userQq) {
	        this.userQq = userQq;
	    }
	    //性别
	    public String getUserSex() {
	        return userSex;
	    }

	    public void setUserSex(String userSex) {
	        this.userSex = userSex;
	    }
	    //个人照片
	    public String getUserPhoto() {
	        return userPhoto;
	    }

	    public void setUserPhoto(String userPhoto) {
	        this.userPhoto = userPhoto;
	    }
	    //用户ID
	    public String getUserId() {
	        return userId;
	    }

	    public void setUserId(String userId) {
	        this.userId = userId;
	    }
	    //用户昵称
	    public String getUserName() {
	        return userName;
	    }

	    public void setUserName(String userName) {
	        this.userName = userName;
	    }
	    //用户密码
	    public String getUserPassword() {
	        return userPassword;
	    }

	    public void setUserPassword(String userPassword) {
	        this.userPassword = userPassword;
	    }
	    //用户邮箱
	    public String getUserEmail() {
	        return userEmail;
	    }

	    public void setUserEmail(String userEmail) {
	        this.userEmail = userEmail;
	    }
	  //用户头像
	    public String getUserProfilePhoto() {
	        return userPicture;
	    }

	    public void setUserProfilePhoto(String userPicture) {
	        this.userPicture = userPicture;
	    }
	    //注册时间
	    public Date getUserRegistrationTime() {
	        return userRegistrationTime;
	    }

	    public void setUserRegistrationTime(Date userRegistrationTime) {
	        this.userRegistrationTime = userRegistrationTime;
	    }
	   // 用户生日
	    public String getBirthday() {
	        return Birthday;
	    }

	    public void setBirthday(String birthday) {
	        Birthday = birthday;
	    }
	}


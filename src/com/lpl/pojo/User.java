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
	    //Ȩ��
	    public String getUserPermisson() {
	        return Permisson;
	    }

	    public void setUserPermisson(int Permisson) {
	    	//this.Permisson = Permisson;
	    	if(Permisson==0)
	    		this.Permisson = "Ĭ��Ȩ��";
	    	else if(Permisson==1)
	    		this.Permisson = "��ֹ����";
	    	else if(Permisson==2)
	    		this.Permisson = "��ֹ����";
	    	else if(Permisson==3)
	    		this.Permisson = "�˻���ͣ";
	    	
	    }
	  //������
	    public String getAboutMe() {
	        return aboutme;
	    }

	    public void setAboutMe(String aboutme) {
	        this.aboutme = aboutme;
	    }
	    //�绰
	    public String getUserTel() {
	        return userTel;
	    }

	    public void setUserTel(String userTel) {
	        this.userTel = userTel;
	    }
	    //����
	    public String getUserAge() {
	        return userAge;
	    }

	    public void setUserAge(String userAge) {
	        this.userAge = userAge;
	    }
	    //����
	    public String getUserHobby() {
	        return userHobby;
	    }

	    public void setUserHobby(String userHobby) {
	        this.userHobby = userHobby;
	    }
	    //����ǩ��
	    public String getUserSig() {
	        return usersig;
	    }

	    public void setUserSig(String usersig) {
	        this.usersig = usersig;
	    }
	    //΢��
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
	    //�Ա�
	    public String getUserSex() {
	        return userSex;
	    }

	    public void setUserSex(String userSex) {
	        this.userSex = userSex;
	    }
	    //������Ƭ
	    public String getUserPhoto() {
	        return userPhoto;
	    }

	    public void setUserPhoto(String userPhoto) {
	        this.userPhoto = userPhoto;
	    }
	    //�û�ID
	    public String getUserId() {
	        return userId;
	    }

	    public void setUserId(String userId) {
	        this.userId = userId;
	    }
	    //�û��ǳ�
	    public String getUserName() {
	        return userName;
	    }

	    public void setUserName(String userName) {
	        this.userName = userName;
	    }
	    //�û�����
	    public String getUserPassword() {
	        return userPassword;
	    }

	    public void setUserPassword(String userPassword) {
	        this.userPassword = userPassword;
	    }
	    //�û�����
	    public String getUserEmail() {
	        return userEmail;
	    }

	    public void setUserEmail(String userEmail) {
	        this.userEmail = userEmail;
	    }
	  //�û�ͷ��
	    public String getUserProfilePhoto() {
	        return userPicture;
	    }

	    public void setUserProfilePhoto(String userPicture) {
	        this.userPicture = userPicture;
	    }
	    //ע��ʱ��
	    public Date getUserRegistrationTime() {
	        return userRegistrationTime;
	    }

	    public void setUserRegistrationTime(Date userRegistrationTime) {
	        this.userRegistrationTime = userRegistrationTime;
	    }
	   // �û�����
	    public String getBirthday() {
	        return Birthday;
	    }

	    public void setBirthday(String birthday) {
	        Birthday = birthday;
	    }
	}


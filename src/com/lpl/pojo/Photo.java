package com.lpl.pojo;

import java.util.Date;

public class Photo{
	private int PhotoId;
	private int UserId;
	private Date PhotoDate;
	private String Photo;
	//��ƬID
    public int getPhotoId() {
		return PhotoId;
	}
	public void setPhotoId(int PhotoId) {
		this.PhotoId = PhotoId;
	}
    //�û�ID
    public int getUserId() {
		return UserId;
	}
	public void setUserId(int UserId) {
		this.UserId = UserId;
	}
    //�ϴ�����
    public Date getPhotoDate() {
        return PhotoDate;
    }

    public void setPhotoDate(Date PhotoDate) {
    	this.PhotoDate = PhotoDate;
    }
    //��Ƭ
    public String getPhoto() {
        return Photo;
    }
    public void setPhoto(String Photo) {
    	this.Photo = Photo;
    }
}

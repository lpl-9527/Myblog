package com.lpl.pojo;

import java.util.Date;

public class Photo{
	private int PhotoId;
	private int UserId;
	private Date PhotoDate;
	private String Photo;
	//照片ID
    public int getPhotoId() {
		return PhotoId;
	}
	public void setPhotoId(int PhotoId) {
		this.PhotoId = PhotoId;
	}
    //用户ID
    public int getUserId() {
		return UserId;
	}
	public void setUserId(int UserId) {
		this.UserId = UserId;
	}
    //上传日期
    public Date getPhotoDate() {
        return PhotoDate;
    }

    public void setPhotoDate(Date PhotoDate) {
    	this.PhotoDate = PhotoDate;
    }
    //照片
    public String getPhoto() {
        return Photo;
    }
    public void setPhoto(String Photo) {
    	this.Photo = Photo;
    }
}

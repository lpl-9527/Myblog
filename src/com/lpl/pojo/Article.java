package com.lpl.pojo;

public class Article {
	private int userId;
	private int articleId;
	private String articleContent;
	private String userName;
	private String articleDate;
	private int articleLike;
	private int ComCount;
	private String articleSort;
	private String articlePhoto;
	private String userPicture;
	private String articleTitle;
	
	public int getComCount() {
		return ComCount;
	}
	public void setComCount(int ComCount) {
		this.ComCount = ComCount;
	}
	public int getUserID() {
		return userId;
	}
	public void setUserID(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	
	public String getArticleSort() {
		return articleSort;
	}
	public void setArticleSort(String articleSort) {
		this.articleSort = articleSort;
	}
	
	
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleDate() {
		return articleDate;
	}
	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}
	public int getArticleLike() {
		return articleLike;
	}
	public void setArticleLike(int articleLike) {
		this.articleLike = articleLike;
	}
	//文章图片
	public String getArticlePhoto() {
		return articlePhoto;
	}
	public void setArticlePhoto(String articlePhoto) {
		this.articlePhoto = articlePhoto;
	}
	//用户头像
	public String getUserPicture() {
		return userPicture;
	}
	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}
}

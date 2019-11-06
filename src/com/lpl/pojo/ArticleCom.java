package com.lpl.pojo;

public class ArticleCom {
	private int UserId;
	private int articleId;
	private int ComId;
	private String UserName;
	private String ArticleTitle;
	private String ComContent;
	private String ComDate;
	private String userPicture;
	//文章ID
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	//文章标题
	public String getArticleTitle() {
		return ArticleTitle;
	}
	public void setArticleTitle(String ArticleTitle) {
		this.ArticleTitle = ArticleTitle;
	}
	//评论ID
	public int getArticleComId() {
		return ComId;
	}
	public void setArticleComId(int ComId) {
		this.ComId = ComId;
	}
	//评论内容
	public String getArticleComContent() {
		return ComContent;
	}
	public void setArticleComContent(String ComContent) {
		this.ComContent = ComContent;
	}
	//评论时间
	public String getArticleComDate() {
		return ComDate;
	}
	public void setArticleComDate(String ComDate) {
		this.ComDate = ComDate;
	}
	//评论者名字
	public String getArticleComName() {
		return UserName;
	}
	public void setArticleComName(String UserName) {
		this.UserName = UserName;
	}
	//评论者ID
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int UserId) {
		this.UserId = UserId;
	}
	//用户头像
	public String getUserPicture() {
		return userPicture;
	}
	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}
}

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
	//����ID
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	//���±���
	public String getArticleTitle() {
		return ArticleTitle;
	}
	public void setArticleTitle(String ArticleTitle) {
		this.ArticleTitle = ArticleTitle;
	}
	//����ID
	public int getArticleComId() {
		return ComId;
	}
	public void setArticleComId(int ComId) {
		this.ComId = ComId;
	}
	//��������
	public String getArticleComContent() {
		return ComContent;
	}
	public void setArticleComContent(String ComContent) {
		this.ComContent = ComContent;
	}
	//����ʱ��
	public String getArticleComDate() {
		return ComDate;
	}
	public void setArticleComDate(String ComDate) {
		this.ComDate = ComDate;
	}
	//����������
	public String getArticleComName() {
		return UserName;
	}
	public void setArticleComName(String UserName) {
		this.UserName = UserName;
	}
	//������ID
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int UserId) {
		this.UserId = UserId;
	}
	//�û�ͷ��
	public String getUserPicture() {
		return userPicture;
	}
	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}
}

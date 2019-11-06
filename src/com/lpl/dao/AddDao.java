package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.lpl.pojo.Article;
import com.lpl.pojo.ArticleCom;
import com.lpl.pojo.Photo;
import com.lpl.pojo.WordLeave;
import com.lpl.util.DbUtil;

public class AddDao {
	public boolean AddArticle(Article article) {
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
        String sql="INSERT INTO article(user_id,user_name,article_content,article_photo,article_title,article_sort) VALUES ('"+article.getUserID()+"','"+article.getUserName()+"','"+article.getArticleContent()+"','"+article.getArticlePhoto()+"','"+article.getArticleTitle()+"','"+article.getArticleSort()+"');";
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.executeUpdate();
        DbUtil.getClose(conn); 
	}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}
	public boolean AddArticleCom(ArticleCom articlecom){
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
		String sql="INSERT INTO article_com(article_id,user_id,article_com_content,article_com_name) values ('"+articlecom.getArticleId()+"','"+articlecom.getUserId()+"','"+articlecom.getArticleComContent()+"','"+articlecom.getArticleComName()+"')";
		 PreparedStatement ps=conn.prepareStatement(sql);
	     ps.executeUpdate();
	     DbUtil.getClose(conn); 
		}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}
	public boolean AddWord(WordLeave word){
        String othername=word.getOtherName();
        String usercontent=word.getWordContent();
        int otherID=word.getOtherId();
        int userID=word.getUserId();
        DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO word(user_id,other_id,other_name,word_content) VALUES ('"+userID+"','"+otherID+"','"+othername+"','"+usercontent+"')";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
	public boolean AddPhoto(Photo Photo){
        int userID=Photo.getUserId();
        String photo=Photo.getPhoto();
        DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO photo(user_id,photo) VALUES ('"+userID+"','"+photo+"')";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}

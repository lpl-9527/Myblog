package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lpl.pojo.Article;
import com.lpl.util.DbUtil;

public class WisShowDao {
	
	public ArrayList<Article> getcomInfo(){
		ArrayList<Article> coms=new ArrayList<Article>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM article,user where article.user_id=user.user_id   ORDER BY article_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	String sql_count="select count(*) from article_com where article_id='"+rs.getInt("article_id")+"'";
            	PreparedStatement p=conn.prepareStatement(sql_count);
            	ResultSet r= p.executeQuery();
            	r.next();
            	//System.out.println(r.getInt(1));
            	Article com = new Article();
            	com.setComCount(r.getInt(1));
            	com.setUserID(rs.getInt("user_id"));
            	com.setUserPicture(rs.getString("user_picture"));
            	com.setUserName(rs.getString("user_name"));
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleContent(rs.getString("article_content"));
            	com.setArticleSort(rs.getString("article_sort"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleDate(rs.getString("article_date"));
            	com.setArticleLike(rs.getInt("article_like"));
            	com.setArticlePhoto(rs.getString("article_photo"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
	public ArrayList<Article> getcomInfo(String articleSort){
		ArrayList<Article> coms=new ArrayList<Article>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM  article,user where article.user_id=user.user_id and article.article_sort='"+articleSort+"' ORDER BY article_date Desc ";
        	Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	String sql_count="select count(*) from article_com where article_id='"+rs.getInt("article_id")+"'";
            	PreparedStatement p=conn.prepareStatement(sql_count);
            	ResultSet r= p.executeQuery();
            	r.next();
            	//System.out.println(r.getInt(1));
            	Article com = new Article();
            	com.setComCount(r.getInt(1));
            	com.setUserID(rs.getInt("user_id"));
            	com.setUserPicture(rs.getString("user_picture"));
            	com.setArticleId(rs.getInt("article_id"));
            	com.setUserName(rs.getString("user_name"));
            	com.setArticleContent(rs.getString("article_content"));
            	com.setArticleSort(rs.getString("article_sort"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleDate(rs.getString("article_date"));
            	com.setArticleLike(rs.getInt("article_like"));
            	com.setArticlePhoto(rs.getString("article_photo"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
	public ArrayList<Article> getcomInfo(int userID){
		ArrayList<Article> coms=new ArrayList<Article>();
		DbUtil db=new DbUtil();
		try {
        	String sql="SELECT *FROM article where  user_id='"+userID+"' ORDER BY article_date Desc ";
        	Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
        	Article com = new Article();
        	com.setArticleId(rs.getInt("article_id"));
        	com.setArticleContent(rs.getString("article_content"));
        	com.setArticleSort(rs.getString("article_sort"));
        	com.setArticleTitle(rs.getString("article_title"));
        	com.setArticleDate(rs.getString("article_date"));
        	com.setArticleLike(rs.getInt("article_like"));
        	com.setArticlePhoto(rs.getString("article_photo"));
        	coms.add(com);
        	 }
		}catch (Exception e) {
            e.printStackTrace();
        }
		return coms;
	}
}

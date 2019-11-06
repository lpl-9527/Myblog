package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lpl.pojo.ArticleCom;
import com.lpl.util.DbUtil;

public class WisComShowDao {
	public ArrayList<ArticleCom> getcomInfo(){
		ArrayList<ArticleCom> coms=new ArrayList<ArticleCom>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT * FROM article,article_com WHERE article.article_id=article_com.article_id  ORDER BY article_com.article_com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	ArticleCom com = new ArticleCom();
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleComId(rs.getInt("article_com_id"));
            	com.setArticleComContent(rs.getString("article_com_content"));
            	com.setArticleComDate(rs.getString("article_com_date"));
            	com.setArticleComName(rs.getString("article_com_name"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
	public ArrayList<ArticleCom> getcomInfo(int articleId){
		int id = articleId;
		ArrayList<ArticleCom> coms=new ArrayList<ArticleCom>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT * FROM article_com,user WHERE article_com.user_id=user.user_id and article_com.article_id ="+id+ " ORDER BY article_com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	ArticleCom com = new ArticleCom();
            	com.setUserPicture(rs.getString("user_picture"));
            	com.setUserId(rs.getInt("user_id"));
            	//System.out.println(rs.getInt("user_id"));
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleComId(rs.getInt("article_com_id"));
            	com.setArticleComContent(rs.getString("article_com_content"));
            	com.setArticleComDate(rs.getString("article_com_date"));
            	com.setArticleComName(rs.getString("article_com_name"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
	public ArrayList<ArticleCom> getToMecomInfo(int userId){
		int id = userId;
		ArrayList<ArticleCom> coms=new ArrayList<ArticleCom>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT * FROM article,article_com WHERE article.article_id=article_com.article_id and article.user_id="+id+" ORDER BY article_com.article_com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	ArticleCom com = new ArticleCom();
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleComId(rs.getInt("article_com_id"));
            	com.setArticleComContent(rs.getString("article_com_content"));
            	com.setArticleComDate(rs.getString("article_com_date"));
            	com.setArticleComName(rs.getString("article_com_name"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
	public ArrayList<ArticleCom> getMycomInfo(int userId){
		int id = userId;
		ArrayList<ArticleCom> coms=new ArrayList<ArticleCom>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM article,article_com WHERE article.article_id=article_com.article_id and article_com.user_id ="+id+ " ORDER BY article_com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	ArticleCom com = new ArticleCom();
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleComId(rs.getInt("article_com_id"));
            	com.setArticleComContent(rs.getString("article_com_content"));
            	com.setArticleComDate(rs.getString("article_com_date"));
            	com.setArticleComName(rs.getString("article_com_name"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}
}

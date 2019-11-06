package com.lpl.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lpl.pojo.Article;
import com.lpl.pojo.ArticleCom;
import com.lpl.util.DbUtil;

public class DetailDao {
	public Article getInfo(String articleID){
		Article com = new Article();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT article_id,user_id,article_content,article_date,article_like,article_photo,article_title,article_sort  FROM article where article_id="+articleID+" ORDER BY article_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	com.setArticleId(rs.getInt("article_id"));
            	com.setArticleContent(rs.getString("article_content"));
            	com.setArticleSort(rs.getString("article_sort"));
            	com.setArticleTitle(rs.getString("article_title"));
            	com.setArticleDate(rs.getString("article_date"));
            	com.setArticleLike(rs.getInt("article_like"));
            	com.setArticlePhoto(rs.getString("article_photo"));
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return com;
	}

	}
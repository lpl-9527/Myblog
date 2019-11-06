package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lpl.util.DbUtil;

public class DeleteDao {
	public boolean DeleteArticle(int articleID){
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
        String sql_atticle="delete from article where article_id='"+articleID+"'";
        String sql_com="delete from article_com where article_id='"+articleID+"'";
        PreparedStatement p1=conn.prepareStatement(sql_atticle);
        PreparedStatement p2=conn.prepareStatement(sql_com);
        p1.executeUpdate();
        p2.executeUpdate();
        DbUtil.getClose(conn); 
	}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}

	public boolean DeleteArticleCom(int comID) {
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
        String sql="delete from article_com where article_com_id='"+comID+"'";
        PreparedStatement p1=conn.prepareStatement(sql);
        p1.executeUpdate();
        DbUtil.getClose(conn); 
	}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}
	public boolean DeleteWord(int wordID) {
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
        String sql="delete from word where word_id='"+wordID+"'";
        PreparedStatement p=conn.prepareStatement(sql);
        p.executeUpdate();
        DbUtil.getClose(conn); 
	}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}
	public boolean DeletePhoto(int photoID) {
		DbUtil db=new DbUtil();
		try {
		Connection conn=db.getCon();
        String sql="delete from photo where photo_id='"+photoID+"'";
        PreparedStatement p=conn.prepareStatement(sql);
        p.executeUpdate();
        DbUtil.getClose(conn); 
	}catch (Exception e) {
        e.printStackTrace();
    }
		return true;
	}
}

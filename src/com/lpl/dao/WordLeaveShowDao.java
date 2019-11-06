package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.lpl.pojo.WordLeave;
import com.lpl.util.DbUtil;

public class WordLeaveShowDao {
	public ArrayList<WordLeave> getcomInfo(int userid){
		ArrayList<WordLeave> words=new ArrayList<WordLeave>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM word,user where word.user_id='"+userid+"' and user.user_id=word.other_id ORDER BY word_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	WordLeave word = new WordLeave();
            	word.setOtherPicturet(rs.getString("user_picture"));
            	word.setOtherId(rs.getInt("other_id"));
            	word.setUserId(rs.getInt("user_id"));
            	word.setWordContent(rs.getString("word_content"));
            	word.setWordDate(rs.getDate("word_date"));
            	word.setOtherName(rs.getString("other_name"));
            	word.setWordId(rs.getInt("word_id"));
            	words.add(word);
            }
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return words;
	}
}

package com.lpl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lpl.pojo.Photo;
import com.lpl.util.DbUtil;

public class PhotoShowDao {
	public ArrayList<Photo> getcomInfo(int userid){
		ArrayList<Photo> photos=new ArrayList<Photo>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT *FROM photo where user_id='"+userid+"' ORDER BY photo_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	Photo photo = new Photo();
            	photo.setPhotoId(rs.getInt("photo_id"));
            	photo.setUserId(rs.getInt("user_id"));
            	photo.setPhoto(rs.getString("photo"));
            	photo.setPhotoDate(rs.getDate("photo_date"));
            	photos.add(photo);
            }
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return photos;
	}
	
	
}

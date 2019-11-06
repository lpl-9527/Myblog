package com.lpl.pojo;
import java.util.Date;
public class WordLeave {
		private int WordId;
		private int UserId;//被留言用户的ID
		private int OtherId;//留言者的ID
		private String OtherName;
		private String OtherPicture;
		private Date WordDate;
		private String WordContent;
		//用户名
		public String getOtherName() {
	        return OtherName;
		}
	    public void setOtherName(String OtherName) {
	    	this.OtherName = OtherName;
	    }
	    //用户ID
	    public int getUserId() {
			return UserId;
		}
		public void setUserId(int UserId) {
			this.UserId = UserId;
		}
		 //留言者的ID
	    public int getOtherId() {
			return OtherId;
		}
		public void setOtherId(int OtherId) {
			this.OtherId = OtherId;
		}
	    //留言日期
	    public Date getWordDate() {
	        return WordDate;
	    }

	    public void setWordDate(Date WordDate) {
	    	this.WordDate = WordDate;
	    }
	    //留言内容
	    public String getWordContent() {
	        return WordContent;
	    }
	    public void setWordContent(String WordContent) {
	    	this.WordContent = WordContent;
	    }
	    //留言ID
		public int getWordId() {
			return WordId;
		}
		public void setWordId(int WordId) {
			this.WordId = WordId;
		}

		//留言者头像
	    public String getOtherPicture() {
	        return OtherPicture;
	    }
	    public void setOtherPicturet(String OtherPicture) {
	    	this.OtherPicture = OtherPicture;
	    }
	}


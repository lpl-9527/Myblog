package com.lpl.pojo;
import java.util.Date;
public class WordLeave {
		private int WordId;
		private int UserId;//�������û���ID
		private int OtherId;//�����ߵ�ID
		private String OtherName;
		private String OtherPicture;
		private Date WordDate;
		private String WordContent;
		//�û���
		public String getOtherName() {
	        return OtherName;
		}
	    public void setOtherName(String OtherName) {
	    	this.OtherName = OtherName;
	    }
	    //�û�ID
	    public int getUserId() {
			return UserId;
		}
		public void setUserId(int UserId) {
			this.UserId = UserId;
		}
		 //�����ߵ�ID
	    public int getOtherId() {
			return OtherId;
		}
		public void setOtherId(int OtherId) {
			this.OtherId = OtherId;
		}
	    //��������
	    public Date getWordDate() {
	        return WordDate;
	    }

	    public void setWordDate(Date WordDate) {
	    	this.WordDate = WordDate;
	    }
	    //��������
	    public String getWordContent() {
	        return WordContent;
	    }
	    public void setWordContent(String WordContent) {
	    	this.WordContent = WordContent;
	    }
	    //����ID
		public int getWordId() {
			return WordId;
		}
		public void setWordId(int WordId) {
			this.WordId = WordId;
		}

		//������ͷ��
	    public String getOtherPicture() {
	        return OtherPicture;
	    }
	    public void setOtherPicturet(String OtherPicture) {
	    	this.OtherPicture = OtherPicture;
	    }
	}


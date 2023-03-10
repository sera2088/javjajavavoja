package talk.dto;

import java.sql.Date;

public class TalkDTO {
	private int talkNum; //talk번호
	private String memId, talkTitle, talkContent; //작성자(아이디), 제목, 내용
	private Date date; //작성일
	
	public TalkDTO() {
		
	}

	public int getTalkNum() {
		return talkNum;
	}

	public void setTalkNum(int talkNum) {
		this.talkNum = talkNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getTalkTitle() {
		return talkTitle;
	}

	public void setTalkTitle(String talkTitle) {
		this.talkTitle = talkTitle;
	}

	public String getTalkContent() {
		return talkContent;
	}

	public void setTalkContent(String talkContent) {
		this.talkContent = talkContent;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "Talk[번호="+talkNum+ ", 제목="+talkTitle+ ", 내용="+talkContent+ ", 작성자="+memId+", 작성일="+date+"]";
	}
	
}//end class

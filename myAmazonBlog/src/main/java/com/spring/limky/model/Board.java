package com.spring.limky.model;

public class Board {

	private int num;
	private String date;
	private String subject;
	private String title;
	private String contents;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "Board [num=" + num + ", date=" + date + ", subject=" + subject + ", title=" + title + ", contents="
				+ contents + "]";
	}
}

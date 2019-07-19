package com.pojo;

public class Notice {

	
	
	int id;
	String content;
	String creattime;
	int user_id;
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreattime() {
		return creattime;
	}

	public void setCreattime(String creattime) {
		this.creattime = creattime;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Notice(int id, String context) {
		super();
		this.id = id;
		this.content = context;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContext() {
		return content;
	}
	public void setContext(String context) {
		this.content = context;
	}
	
	@Override
	public String toString() {
		return "Notice [id=" + id + ", context=" + content + "]";
	}
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//	}
	public Notice() {
		super();
	}

}

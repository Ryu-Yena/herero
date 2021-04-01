package com.herero.vo;

public class EventVo {
	
	private int event_no;
	private int group_no;
	private String event_title;
	private String event_date;
	private String event_time;
	private String event_deadline;
	private String event_content;
	
	private String title;
	private String start;
	
	
	
	public EventVo() {
	}


	public EventVo(int event_no, int group_no, String event_title, String event_date, String event_time,
			String event_deadline, String event_content, String title, String start) {
		this.event_no = event_no;
		this.group_no = group_no;
		this.event_title = event_title;
		this.event_date = event_date;
		this.event_time = event_time;
		this.event_deadline = event_deadline;
		this.event_content = event_content;
		this.title = title;
		this.start = start;
	}
	
	


	public EventVo(int event_no, int group_no, String event_content, String title, String start) {
		super();
		this.event_no = event_no;
		this.group_no = group_no;
		this.event_content = event_content;
		this.title = title;
		this.start = start;
	}


	public int getEvent_no() {
		return event_no;
	}


	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}


	public int getGroup_no() {
		return group_no;
	}


	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}


	public String getEvent_title() {
		return event_title;
	}


	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}


	public String getEvent_date() {
		return event_date;
	}


	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}


	public String getEvent_time() {
		return event_time;
	}


	public void setEvent_time(String event_time) {
		this.event_time = event_time;
	}


	public String getEvent_deadline() {
		return event_deadline;
	}


	public void setEvent_deadline(String event_deadline) {
		this.event_deadline = event_deadline;
	}


	public String getEvent_content() {
		return event_content;
	}


	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getStart() {
		return start;
	}


	public void setStart(String start) {
		this.start = start;
	}


	@Override
	public String toString() {
		return "EventVo [event_no=" + event_no + ", group_no=" + group_no + ", event_title=" + event_title
				+ ", event_date=" + event_date + ", event_time=" + event_time + ", event_deadline=" + event_deadline
				+ ", event_content=" + event_content + ", title=" + title + ", start=" + start + "]";
	}

}

package com.herero.vo;

public class EventmemberVo {
	
	private int eventmember_no;
	private int event_no;
	private int gorupmember_no;
	private String participate;
	private String enrolled_date;
	private String payment_by;
	private int price;
	private String pay_date;
	private String recieved_person;
	private int phone_no;
	
	public EventmemberVo() {
		super();
	}

	public EventmemberVo(int eventmember_no, int event_no, int gorupmember_no, String participate, String enrolled_date,
			String payment_by, int price, String pay_date, String recieved_person, int phone_no) {
		super();
		this.eventmember_no = eventmember_no;
		this.event_no = event_no;
		this.gorupmember_no = gorupmember_no;
		this.participate = participate;
		this.enrolled_date = enrolled_date;
		this.payment_by = payment_by;
		this.price = price;
		this.pay_date = pay_date;
		this.recieved_person = recieved_person;
		this.phone_no = phone_no;
	}

	public int getEventmember_no() {
		return eventmember_no;
	}

	public void setEventmember_no(int eventmember_no) {
		this.eventmember_no = eventmember_no;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}

	public int getGorupmember_no() {
		return gorupmember_no;
	}

	public void setGorupmember_no(int gorupmember_no) {
		this.gorupmember_no = gorupmember_no;
	}

	public String getParticipate() {
		return participate;
	}

	public void setParticipate(String participate) {
		this.participate = participate;
	}

	public String getEnrolled_date() {
		return enrolled_date;
	}

	public void setEnrolled_date(String enrolled_date) {
		this.enrolled_date = enrolled_date;
	}

	public String getPayment_by() {
		return payment_by;
	}

	public void setPayment_by(String payment_by) {
		this.payment_by = payment_by;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

	public String getRecieved_person() {
		return recieved_person;
	}

	public void setRecieved_person(String recieved_person) {
		this.recieved_person = recieved_person;
	}

	public int getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(int phone_no) {
		this.phone_no = phone_no;
	}

	@Override
	public String toString() {
		return "EventmemberVo [eventmember_no=" + eventmember_no + ", event_no=" + event_no + ", gorupmember_no="
				+ gorupmember_no + ", participate=" + participate + ", enrolled_date=" + enrolled_date + ", payment_by="
				+ payment_by + ", price=" + price + ", pay_date=" + pay_date + ", recieved_person=" + recieved_person
				+ ", phone_no=" + phone_no + "]";
	}
	
	

}

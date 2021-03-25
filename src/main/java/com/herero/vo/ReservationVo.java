package com.herero.vo;

public class ReservationVo {
	
	private int book_no;
	private int calendar_no;
	private String book_date;
	private String book_paying_dl;
	private String book_status;
	
	public ReservationVo() {
		super();
	}

	public ReservationVo(int book_no, int calendar_no, String book_date, String book_paying_dl, String book_status) {
		super();
		this.book_no = book_no;
		this.calendar_no = calendar_no;
		this.book_date = book_date;
		this.book_paying_dl = book_paying_dl;
		this.book_status = book_status;
	}

	public int getBook_no() {
		return book_no;
	}

	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}

	public int getCalendar_no() {
		return calendar_no;
	}

	public void setCalendar_no(int calendar_no) {
		this.calendar_no = calendar_no;
	}

	public String getBook_date() {
		return book_date;
	}

	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}

	public String getBook_paying_dl() {
		return book_paying_dl;
	}

	public void setBook_paying_dl(String book_paying_dl) {
		this.book_paying_dl = book_paying_dl;
	}

	public String getBook_status() {
		return book_status;
	}

	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}

	@Override
	public String toString() {
		return "ReservationVo [book_no=" + book_no + ", calendar_no=" + calendar_no + ", book_date=" + book_date
				+ ", book_paying_dl=" + book_paying_dl + ", book_status=" + book_status + "]";
	}
	
	
	

}

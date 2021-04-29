package com.mvc.book.model.dto;

public class Bookeserch {
	//책 검색
	private int bookno;			//책번호
	private String bookcover;	//책표지
	private String booktitle;	//책이름
	private String bookprice;	//책가격
	private String bookGenre;	//책장르
	
	public Bookeserch() {
		super();
	}


	public Bookeserch(int bookno, String bookcover, String booktitle, String bookprice, String bookGenre) {
		super();
		this.bookno = bookno;
		this.bookcover = bookcover;
		this.booktitle = booktitle;
		this.bookprice = bookprice;
		this.bookGenre = bookGenre;
	}


	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public String getBookcover() {
		return bookcover;
	}

	public void setBookcover(String bookcover) {
		this.bookcover = bookcover;
	}

	public String getBooktitle() {
		return booktitle;
	}

	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}

	public String getBookprice() {
		return bookprice;
	}

	public void setBookprice(String bookprice) {
		this.bookprice = bookprice;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}


	@Override
	public String toString() {
		return "Bookeserch [bookno=" + bookno + ", bookcover=" + bookcover + ", booktitle=" + booktitle + ", bookprice="
				+ bookprice + ", bookGenre=" + bookGenre + "]";
	}
	
}

package com.mvc.book.model.dto;

public class BookeR {
	//책 검색_서재 담기 읽은 책
	private int bookno;			//책번호
	private String bookcover;	//책이미지
	private String booktitle;	//책이름
	private String bookwriter;	//책작가
	private String bookGenre;	//책장르
	private String bookRating;	//책평점
	
	public BookeR() {
		super();
	}

	public BookeR(int bookno, String bookcover, String booktitle, String bookwriter, String bookGenre,
			String bookRating) {
		super();
		this.bookno = bookno;
		this.bookcover = bookcover;
		this.booktitle = booktitle;
		this.bookwriter = bookwriter;
		this.bookGenre = bookGenre;
		this.bookRating = bookRating;
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

	public String getBookwriter() {
		return bookwriter;
	}

	public void setBookwriter(String bookwriter) {
		this.bookwriter = bookwriter;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public String getBookRating() {
		return bookRating;
	}

	public void setBookRating(String bookRating) {
		this.bookRating = bookRating;
	}

	@Override
	public String toString() {
		return "BookeR [bookno=" + bookno + ", bookcover=" + bookcover + ", booktitle=" + booktitle + ", bookwriter="
				+ bookwriter + ", bookGenre=" + bookGenre + ", bookRating=" + bookRating + "]";
	}
	
	
}

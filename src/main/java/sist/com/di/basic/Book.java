package sist.com.di.basic;

public class Book {
	private String author;
	private int price;
	private String title;
	private String publisher;
	private String isbn;
	
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Book(String author, int price, String title, String publisher, String isbn) {
		super();
		this.author = author;
		this.price = price;
		this.title = title;
		this.publisher = publisher;
		this.isbn = isbn;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	@Override
	public String toString() {
		return "Book [author=" + author + ", price=" + price + ", title=" + title + ", publisher=" + publisher
				+ ", isbn=" + isbn + "]";
	}
	
	
}

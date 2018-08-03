package Local;

import java.util.Date;

public class Review {
private int id;
private String fname,category,title,rating,review,email;
private Date sdate;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating = rating;
}
public String getReview() {
	return review;
}
public void setReview(String review) {
	this.review = review;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Date getSdate() {
	return sdate;
}
public void setSdate(Date sdate) {
	this.sdate = sdate;
}
}

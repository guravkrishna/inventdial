package Local;

public class Order {
private int id;
private String order_name,location,shipping_date,delivery_date,price,mobile_no,email;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getOrder_name() {
	return order_name;
}
public void setOrder_name(String order_name) {
	this.order_name = order_name;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getShipping_date() {
	return shipping_date;
}
public void setShipping_date(String shipping_date) {
	this.shipping_date = shipping_date;
}
public String getDelivery_date() {
	return delivery_date;
}
public void setDelivery_date(String delivery_date) {
	this.delivery_date = delivery_date;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getMobile_no() {
	return mobile_no;
}
public void setMobile_no(String mobile_no) {
	this.mobile_no = mobile_no;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
}

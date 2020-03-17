package com.abc.assign;

public class AFashions {
public int id;
public String name;
public String size;
public int price;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSize() {
	return size;
}
public void setSize(String size) {
	this.size = size;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
AFashions(int id, String name, String size, int price){
	this.id=id;
	this.size = size;
	this.name = name;
	this.price=price;
}
}

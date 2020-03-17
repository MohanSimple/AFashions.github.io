package com.abc.assign;

public class Student {
	public int id;
	public String name;
	public String course;
	public int marks;
	
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

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public Student(int id, String name, String course, int marks) {
		this.id=id;
		this.name=name;
		this.course=course;
		this.marks=marks;
	}
	
}

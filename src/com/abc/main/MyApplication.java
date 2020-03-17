package com.abc.main;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abc.BO.StudentDoa;
import com.abc.assign.Student;


public class MyApplication extends HttpServlet{
static Student stu;
static String h;
static String info;
static ResourceBundle bundle1=ResourceBundle.getBundle("libs.utilities.data");
static ResourceBundle bundle2=ResourceBundle.getBundle("libs.utilities.mysql");
public MyApplication(String h) {
	if(h.equalsIgnoreCase("men")) {
		
		info= bundle1.getString("men");
	}
	else if(h.equalsIgnoreCase("women")) {
		info=bundle1.getString("women");
	}
	else if(h.equalsIgnoreCase("kids")) {
		info=bundle1.getString("kids");
	}
	
}
public MyApplication() {
	
}
public void service(HttpServletRequest req, HttpServletResponse res) {
	
	
}
public String test() {
	return info;
}
public String mensCollection(String dis) throws SQLException {
	
	String url=bundle2.getString("url");
	String name=bundle2.getString("name");
	String pwd=bundle2.getString("pwd");
	Connection mycon = DriverManager.getConnection(url,name,pwd);
	String query="";
	Statement stmt = mycon.createStatement();
	if(dis.equals("name")) {
		StudentDoa st=new StudentDoa();
		st.get();
		MyApplication my=new MyApplication();		
		return "skult";
/*		ResultSet res = stmt.executeQuery(query);*/
		
		
	}
	else if(dis.equals("size")) {
		return "Medium";
	}
	else if(dis.equals("price")) {
		return "899";
	}
	else if(dis.equals("image")) {
		return null;
	}
	return null;
	
}
}

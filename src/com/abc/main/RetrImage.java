package com.abc.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RetrImage
 */
@WebServlet("/RetrImage")
public class RetrImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	
	static ResourceBundle bundle2=ResourceBundle.getBundle("libs.utilities.mysql");
	static String url=bundle2.getString("url");
	static String name=bundle2.getString("name");
	static String pwd=bundle2.getString("pwd");
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
			

	Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,name, pwd);

		Statement stmt=con.createStatement();
		ResultSet res = stmt.executeQuery("select image from mens where id=2");		
		if (res.next()) {
			byte[] a = res.getBytes(1);
			
			ServletOutputStream sos = response.getOutputStream();
			sos.write(a);

		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}


}

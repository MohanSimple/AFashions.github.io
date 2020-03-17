<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.abc.main.MyApplication" %>

   <%--  <%@ page errorPage="error.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Masculine</title>
</head>
<body>
 <%@ include file="header.html" %>
<div class="container">
<div class="row">
<div class="">
<img src="">
</div>
<div class=>
<br>
<br>
<% MyApplication my= new MyApplication();
String name=my.mensCollection("name");
String price=my.mensCollection("price");
String size=my.mensCollection("size");
%>

<div class="col">
<p><% out.print(name); %><br><% out.print(size); %><br>
<% out.print(price); %></p>
</div>
<img src="">
</div>
</div>
</div>


<div>
<img src="./RetrImage" alt="Skult" width="300px" height="500px" >
</div>


<%@ include file="footer.html" %>
</body>
</html>
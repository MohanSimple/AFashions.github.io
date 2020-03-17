<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="error.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>Your Store</title>
<style>
#menSec {
	background-image:
		url("https://i.pinimg.com/564x/1f/3e/68/1f3e68015ffbca3a2b75308489fcc9b0.jpg");
	opacity: 90%;
	background-repeat: no-repeat;
	height: 780px;
	color: bisque;
	text-align: center;
	box-shadow: -8px 5px 5px darkslategrey;
}

#womenSec {
	background-image:
		url("https://i.pinimg.com/564x/9a/4d/ac/9a4dac979ab0bb0462fb027cbd0fc538.jpg");
	opacity: 90%;
	height: 780px;
	box-shadow: 8px 5px 5px maroon;
}

#buttons {
	margin-left: 42.5%;
}

button {
	width: 100px;
	background-color: black;
	opacity: 80%;
	border: none;
	color: lavender;
}

#images {
	margin-top: -3%;
}
</style>
</head>
<body>

	<%@ include file="header.html"%>
	<br>
	<div id="buttons">
		<a href="mens.jsp"><button>Mens</button></a>
		<button>Womens</button>
	</div>
	<div class="container p-5" id="images">
		<div class="row">

			<section class="col" id="menSec"> </section>
			<section class="col" id="womenSec"> </section>
		</div>
	</div>

	<%@ include file="footer.html"%>
</body>
</html>
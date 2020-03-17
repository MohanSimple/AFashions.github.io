<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="com.abc.main.MyApplication" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page errorPage="error.jsp" %>
<html>
<style>
#mens-d, #womens-d{
width:400px;
border:2px solid black;
border-image:linear-gradient(-20deg,red,black,yellow,purple);
border-image-slice:1;
position:relative;
padding:10px;
color:bisque;
}
body{
background-image:url("https://i.pinimg.com/564x/6d/97/e3/6d97e3126e4e2c015d9167d96f528d3f.jpg");
}
#womens-d{
float:right;
}
.mensbtn:hover{
background-color:black;
color:white;
border:2px solid black;
}
#mdiv{
box-shadow:4px 5px 10px;
width:60%;
background-image:linear-gradient(20deg, teal,lavender);
}
#wdiv{
box-shadow:4px 5px 10px;
width:60%;
background-image:linear-gradient(-20deg, indianred,lavender);
float:right;
}
.marticle{
width:560px;
height:160px;
margin-top:-205px;
margin-left:770px;
background-image:url("https://tse3.mm.bing.net/th?id=OIP.n7iqdN9rbiMu9DPfhsuWbQHaEh&pid=Api&P=0&w=296&h=182");
background-repeat:full;
box-shadow:3px 4px 8px black;
/* linear-gradient(darkslategray,lavender), */
}
.warticle{
width:560px;
margin-left:20px;
margin-top:50px;
position:relative;
height:160px;
background-image:url("https://tse3.mm.bing.net/th?id=OIP.X6q0kCH86au1iA8Bc_eWdQHaEU&pid=Api&P=0&w=292&h=171"),linear-gradient(lavender,darkslategray);
box-shadow:3px 4px 8px black;
}
.karticle{
width:560px;
height:160px;
margin-top:-205px;
margin-left:770px;
background-image:url("https://tse4.mm.bing.net/th?id=OIP.vrCAuUb6rRu8cz9E6-ycdgHaFj&pid=Api&P=0&w=208&h=156");

box-shadow:3px 4px 8px black;
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Welcome</title>
</head>
<body>
<%@ include file="/files/header.html" %>
<br>
<div class="container m-3 p-3" id="mdiv">
<a href="/AFashions/files/mens.jsp"><button name="mens" type="button" class="mensbtn" click="<%!
MyApplication mym=new MyApplication("men");
String men=mym.test();

%>">Mens wear</button></a>
<br>
<br>
<div id="mens-d" name="mensdivision">
Mens division
<p><% out.print(men); %></p>
</div>
</div>
<article class="marticle">

</article>
 


<br>
<br>
<div class="container m-3 p-3" id="wdiv">
<a href="/AFashions/files/womens.jsp"><button name="women" type="button" class="mensbtn" onClick="<%!
MyApplication myw=new MyApplication("women");
String women=myw.test();

%>" style="float:right;">Womens wear</button></a>
<br>
<br>
<div id="womens-d" name="womensdivision">
Women division
<p><% out.print(women); %></p>
</div>
</div>
<article class="warticle">

</article>
<br>
<br>

<div class="container m-3 p-3" id="mdiv">
<a href="/AFashions/files/kids.jsp"><button name="mens" type="button" class="mensbtn" click="<%!
MyApplication myk=new MyApplication("kids");
String kids=mym.test();

%>">Kids wear</button></a>
<br>
<br>
<div id="mens-d" name="mensdivision">
Kids division
<p><% out.print(kids); %></p>
</div>
</div>
<article class="karticle">

</article>
<br>
<br>
<!-- <img src="/asset.Image.JPG">
<img src="AFashions/asset/IMG_5221.PNG">
<img src="C:\Users\PC2019\Desktop\IMG_5151.JPG">
<img src="C:\Users\PC2019\Desktop\IMG_5151.jpg">
<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhMVFhUVFRUVFRcWFRUVFRUVFRUWFhYVFRUYHSggGBolGxcWITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGi0lHyUtLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tKy0tLS0rLS0tLS0tLS0tLS0tLSsrLSstLf/AABEIALABHgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQIDAAEGBwj/xAA+EAABAwMCAwUFBgUDBAMAAAABAAIRAwQhEjEFQVETImFxkQYXVIHSBxQyobHBQlKj0fAjYuEkgpLxFVNy/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAKhEAAgICAQQBBAICAwAAAAAAAAECEQMSIRMxQVEEIjJhkYHwccEFFFL/2gAMAwEAAhEDEQA/APMGhWhimKatZTVKODYqbTVjaSubTRFKkhRtwUUFMW6YMoK9tugNdisUFayimX3VWNtvBA21C5tBTFumTbZWC2QodZRb91WfdU1FsVMW61GeRMT/AHVa+6p2LXwUxaeCZEZSEP3RSbZp8LPwVjbJEjyIRZq+lZSnrLFXssErY8YuxKyz8FL7onzbJT+5DoltFNW0c+20V9OxToWa2KCNipV3FP3QdFbTtEz+7q9lBAbbkVfdFJtqmvYqxlumRzzlbFtO0RdO0R1O3RVK28FmxYxsCp0AN4HmmFvarKlkdWeY/vhObC3hjfL9ylkzrhg4sha2iZ0qULdOnCtAU2dMYpG2qwKIWIjkiUNXcrHuSu9uwDugw2fOzbZWtt0zp0USy1XTZ5rj6FTLfwV9O3TWnZq5lmhsgOMgClQRDbdH07VbuqjaQEiSdh+58EO74HXbkGbbK1tBDNvHk8h4BObQah4oyi13MnfYEbbqxtumAt1NtFIawAW6l928ExFJSFNY1i8UPBWCgj201MUkDIXi3VrLbwR7aKubSQbGUBeLdXsoo5tEKzsErZaMGgNlBS7BFikrGUkCv4AOxWNtUzbSUhRWsV47FP3YyrG2pTPs1gYE2xJ4V5Afu0KbLdGMpq1lNaycsSKKdqEbSojorKVJF06SDZWEfSBX0MDzRlvS0gAqzStyhZZKkbAW1GVF9QDdYZE3PAjxWnPhDPqtdz2zg7IO6ulgSepdeXgAwub4heZVt5dLnL65MopEnkOfZRRVOiFBiYUA1WaIxpkadBEMt1YxjYR1Gl3VNllCwWjQXO3TXPc524kjwDWmYCf8R1Opljdzg+XMfNKbpulkdTHo0SrYlzZHIuKAXUwCI8Ci7Z8FCiOqvt3CYPTf57fqryqjmi2mdZbjU0HqreyCH4YH9nDNLiD+UckfbtcR3m6T+q4mdutlAorfZeCvuKrKbS55DQOZ/bqlfCuK9pULSMP7zM5DYMAiOemfmpyyKKtjxwOXYNDAptpop1MblY2kmsXpFLaStaxWimrGMQsdQIBik2miGtV7GJbKqAH2SmKSPYxb0LWN0wJtJTFJUWtQ9pkmDOOXUJiAi+DRggcMWBiIDVNrUAuKBRR8FfToohrVMI2SeJGmMhTWtSlKFh1o1K2sVdStC1gok4oK/JIhq3UrIarVWBdGNhjYHz8T1QV1VCys9LL6rpaT0CZIm2/QDxG+Y0wXAHzSi4dOULcUZJJ3OSo0CW43HTonqidXyCDiHeMDAJA9ea6C0ty5odG6HocDa4Nds4GHdHAbHzhPo0MAbvnPRM5PsVWKLVgLLclaqXDaZ0uP+FWWdpoMg5/zdEVeHsqnvCZKaxVh9MFovaczK3cUGO3CtuuBBrZp4a05yShC5wxkgcyjw+wHGUOASnwsCqCCI2g9CguIUgx3cDo8SDPlCb0q0gkjICEujnwIlNG7uxJOLjVDf2VJ1vpnk0H9D+hR3tFxCnbsl86zJYACSS3mY/hE9VzlpUIeCCQdpkg+GQlvHbp1erpLtRHcAJkwM/qozhzdl8ORNa0Ge0N92jGuI1EtA1jDQcag0HLTzS+2mnUpGRktJImW9Gk+X5KVnXr03U7Y02va90aKgI3y6DuI6jZGXdg+tVZSpPluokaiGtEgQCYy6QR6bZXnuXLxvym79o7E7+r/AAd7e08kdStU2YCX2F44gCqRrJgaQS12MhhjvBuxKLbdtDwwOGogEDfBkD9CrwktFyBw5CmsVrKaHqvJ8FClUc3ZPTFpIZMYsNYBwb6nohqdy4DMT1/4VVYQxxaZdpJHPMY/NFIzaHQaqLw6WHxwPmgPZq+dUohzzq6GBy6wjLh+ryCWHJpOgK0pnW0xzTcU0NSbBCMJTyQsSOhbUS9Q1pRqLpWSqdaztEDUXalo1IQzrgKmpcACZRBRdWu8gKD6iWOr5lF6pyEWqAo2be9UPcpOVFeoG7kBAOlAXEqsAAGDM/JB8SeHN0gzlV3lxMnqhKVQahzyrKPBzykroEdR6qqpRRtYiSqarwEWrJNpBVCvIRTaiQWlaEztKo5wryx0GLYwbW8FYyoqLdoccFXtapvgZbhTLnGVFoYZkBVhq32ak6KqUvQs4beMrOe3siyCQ0gzLQYkjly9UdX4WHRthabw9oqCo0aXZmNnTO4RpdjIQVrswySfg5P2otX0abCx0anaTG+04PLn+S5F0hwc3GQBuc9Sf83Xb+2tzDKQgRLzJzloAj8yuMqXgdG2PCBhUeRQjcib1XYPPG6rKYES5sQ4kuAjYweaS172u6p2hcXOPeJx13AAgfJTdeMyJBn8vBOeFWVOrSc9wOodwRLDPzBnyjK8/q/GwpvRpP8AA0XPI+40tfbtvZtp1KRqOGBpLmmTgS5u04B/dddwqjQa4tq06Ye4hukf7W5DDvAB9ZXm97wg21am93fowHAjLXGTrYSP4h05yvQOHvJq0qrGatVu5w5lk0qZ1EYmdGkLhzfFxqCl8eTSfPe1/ijsxOXOwfdN0uMfhk6eeOWVVJVTrWpTaTqljHBh1ZkaGOBJ3aZLpwiOF03PDi+AdWAOTYEGec5yu34meUo65F9X47MnkxtconSaSiqFIhx/lI9Cr6dtCsFEldtokkyNGm1mGgCTJjGVaXLfZxuqKtwAl28ISeSMfuLhJ2ysbXAwUrrXXRUXN6XEkCPBPHDkfc5383/yh425YecKIuWQuZNw6ZCypfGRyHOUz+MvZo/KyPuh/VvQFR99lKy8dVNtcBL0old8gaHzlacwlDC+CpqX07GEOm/A6yNdw02p6hQYx7TIx+aBN1/uWn8Ua3+JbpzD/wBiHngaAvjlKFq8Pc4kk56pcONwd8KutxxxO+FlCQX8jFJdy+5tabfxO8gEq7VmqBj5oG94yS92NhE+MSkrr0zI36q8YPycuTLFNNDy7um5zkbJbcX5P6IKpcFwJcc7ef8AgQFWqqKNHJlyW+B9RqI+hU6rnadyUdQuSrl4yOpt6gRYqQucZdwiKd9Kk4HQp0PH3Uq1knIcFytfi4CU1PaoGQCRuPRI8QyyJs9Bc5zckj+65PjNa/rk02t0M2hp/F5u3PlskNz7WPayAZIMgk8uYSse1N26Q1zgJ3A/cqcsdcjNp8ch9bg9ZhLXtJiY6HniULWpPbAcxw829OYHIIqjxNz6TjWfqeHANJdkCMxEeCHrcQrVHgBzzONySf8AiFyJRnJ89jPFFK7G/DOHh1NzzMgSwFuMESJiG4nfwU6oe1+kAjUQd8YEyPGRPyUXVqrGiaoGIEPAwNoPmqre1pvGouAI/Fpc0SYOwJ72BmMLi2U/yjojJJJB1peua59B7NQfOHSWl0buEiCCTz6LuuCX1OkA0FsNb2YJ2GI0yXEu6f3XGcNpUiNA1l2Y0DVqBAIDpdHn0hNqNBlYtDjDskjUG6TLQ0N68+uynn+NavHa/vo6ILwdTUd2lIs1hxEkmNJLjjI5BE8Pf3GjHdaGnrguj8oSOnqt5e+HGdIBcWwIGYG+TCYUuL0W6QMBxcdiACY/ETG8iPJR+PPJgk+s7XdMOVJR5HzG9VTc3zWJZX4u3+YHyM/ok/Eb8HIK9fC45abkqPIyfJt6wGtbi84aCSgX8QPMHl0jIn9CEko3BDpG+PPcbIqjXaR3xj9wGx+i63CC+0msKfMmG1bqNwPyUKlcHafy/PKXXFWT3TA8clVs2gnx2/fdLp5Tf7H1xrsW3RO8n1QxeSN1N7uqqfVzj81ZEWhpYVtTYO4/TkiCUpbVeILRJ8FdTvy/BEOG4U3F9zohkVUwt7lRUcgbm93A9f7KP3RzmFweIH8JMHyCdR9kpzvhG694MgeqW3N52cOjVDhg7GDmVdTovJgBEVeF4BPoqXGPBBQlNhlp7UUa9J1KsG0uTHMYdxyd+X/CBeC0lp3BQg4Q0kgd0yD4bgEkf935K2oXMLWVOTYDpmQNiDzHRQhCEJNR8lcmOUoqT8Cm6J7wH87j55QTQUzdTk+v5lSFqIVr1OdRlLuK9Kpe1Nn2yoqW6a0xZY2gWkAjKRSqjVR1ME7J26OtB4eq3F3JUtJCnrS2M1ZVUdO4SC+twHEA4JPqYIP6hPqrZSq+snOGMEGUXyhYvV8nP31IgnOCfROOC8RNIFrmNcBsORHzS6+t3yQQd/0/9od1F5OAZDiPlJI/Vc8salwzptNHo1lw+hWpa3NFORqwc/JVVOG0iNQJEcpg+i5K2u6lNjWyR+IEbbuKb8Kt6jj+Lu7wSfz6rkn8VPsBwTHFG3YDABMj+YTmcHpsiqliIJ0TiTkCB1Ph4qHC6x1aXNYCOmM+AT61t9Z8NjMgR0jmMqDwa+GPGMfKFfDbX8L505JmdIEg7bmICnUik5r9RJBku5bF2O7PPcrpP/j2EaYHkAP8C1S4a2HNzpOCPIY/wJMuSUFwmzshKKVsWUK3bBzq1RgDS18OBmMOGrAnr5Km7eG1OyLC7s2ipqz/ABSdOgDAgExCa1rO2aGhxpQ0aTqDHFwmcl25R1txWz0tbLRHINZqx1MQByx1XHrKM9p/wm1++CWTMsvCOcuOIkMGmlJ5nutDhPKRIx5oe2v9RcXsAGYaQ3lEDUfxHfaF6Lb1beoNTabalPZxJB0k8ix37Lz/AI/xqyFGnWo03ubVe9gEadBpkagTJncDHqlliyatxipX64/v8CQw+FX6FnEuKtpgTTJJJwwE4zHQTtzQreIOfmKg8IchqvtK1gBNs0YBy55kuE7iNs8lTV9oKVUd+2Y2IBcx7muBd0dkjqmj8bM0vor8p/6sWfx5tU2hqy+cAXO/CN5gCPMou0vw+YBxzxB+YXM1qOts02ucCBoD6mNLpEnA5/MwmfDaZp0w0mTkuPVxMk+q9j4WDLH75No4cuNYlzK2OnVFCUGKyp4hXim7y/cLvcaRKL2dDEt8VgaRlI+CXL3F2e60CQep6HlsnXeOzXHyBKlGfH1cFJY3F0RLVJhO0+KjSo1HmGtJKuHDapcBpI8eSzzQ7bL9jRxvvRL71BnmNkYeIAjvId/DnBurEjrsgqbC8GTB8Erpl4pxCjWDiYOcrL+m4skjDXGPInIHXkgHMe3EbnB2TOtULtxy9OZ/NI1yqKKnFpiXtFayodoVrbQA9Vt1ASCCRCpaOfVkHkbFCuZKOu4iSlNW6aMAoxZOa9nPUno2lVKS07pF0blWbZkNe2Kmyul7bkHEq1rh1S2OMWVQiRoclIlWU6hCAUxk+0pv5kfOVXX9nQQXNfM5zCrpVUXTuCkdlItegB3s+YyeaPtOH6CHTtylXi6lUV7po3cB81OU4x+50NfoYU6jWOL9Ezz5hHN4jgGS3GZ6pFSrA7EH5q6nVMQlUoT+12NGXPJ0vDuJCD3vzyhrniNQulpOSBHUEwRCS9jgnMnoVbbNcNMzh0yegyEmicuRpvZUippris9tR7SwGGiGmRPLCH4vR0aiwz3dQ5N8jCo4lUd2ztzpcCSATIBSqpemo8jIDYIDh0kkHw/sEuXHB+DQxL0dp9mnG9FSpb1JIe6mZBEtOWtkD+E5E/7QudeGvtm0zADL2+1ie8wlnat+ciP+09Ff7JcNqi8p1dJLO4QSORqCT6aj810HBeBtdf3pJIDteMgGXO0u8+8//wAksElwjouqPPOMUXPc09IbA2nTJPoRCro8LqVJYGkS6SSMQBH9/VO2cLLKjhUnDnR3S2cBu53w1dBYNaNhC6VAhPLy6A7SydpA6AD0RzeH9UzpMHJTLFXqVwcnRTdsUnhwJw6FqrwUVGluvf8AbIV/EbhtJjqjtmtLj5ASlVpxqnVwH6DHUHKhn+UsSWz7/geGFXaQp4jd/cqpp83BrpxBHl6qNTjoe3W6QG5a0budGkajIHMiPHwlct7UXbzWLKj9b2d0OxyO2PVJ2XDhsTyPhgyJXHL42PI935Ozg9Lt/amkIqVHw8n8IkEaREgiW79Qugd7Q0QG6S5zycQS6XcwXGBMLxj7wS4nkd/0yPJF0XanNOR4gx3QZjz29FzZf+Og+U2P1Gev3HF5xqDjza0zy/iPJUVblgMR3s/hLSBHLeVw9jdw38WY7jnEANBBn/8AW+ypuOMB3e5/zDnAxzxsp445oOosVtS7o783HVbbeBef23tG8Efh0ARH77LoLDilOs2Wnb8Q5jzXq48jkvqVMjKLTOiNVVVarRkkDzSKtx2k2QX7dM/muQ4zxN1Wq50ktmGCcAeXyn5ouddgVZ1fFeLMJ0sh3iDiUpNyZ5D1JSC1q8wYM5noqrq+JOCPHYrmmsmR1fBowjdtFoYVYwlTVjHAL1tzkbIF5GSi6Lyear1g7qQqAJHJtmVDCnUI3Kt+8BJn3BK22vCOprHzKvRE0nnqkTLxXU7xBxYykXccv30Wgta46pkj+GOq5WpxN7snnv18F1L7yRB2II9cLkX2Tw7RpM5jxA5z5KE8KbtovjmginxR4M6s/OPDnnmup9n+MGqYc7MRB3Lt5B8uS4qjR1GM75wTHnC7HgdCzoZqVAagyTEObjYKTxKLUkijSfY6U1HQrrWo92CTAQ1LidpghxcDnnnxV1LjVCToYfnhW5fZCql5KOKXpt2mpnvaRjkXGD8p/VDWFVxJqNgl3PTkSD/wqva+8D7Z+kREGB0DgSuZ4Xe1GVGsbBBe0Hyx+wXN8iGTjVlIyfg9c9mH1KlSamohowTAEy7AHOP7LoLSo01asN0kOIJ/m5z+a5T2autLBnqT5lO6NwC5xH8RJKKi0uSykmV3nDjUdJOMiBt6FW0+FtgAgY5gBpPnG6tp1QB1VNW76YTJsVxiEtsmNG8KNWmwAkCUAbvqZQ9W8CNMHANxNnaNcwtjUCDywRC88ufZC5p1BpILC7LmuAcGzzaTy+ey9Aq3vigqt4matUxOEJrr2ZpuoGnpGo57Q5frMZnfltKUcM9l+xrOc8a2tjsiYyTuS3wXTvvFU67RXHArOG9rOD9k7tmkaXujSBGl2n8xgpHbVy0yP/fgvQ+NAV6TqfM7HoRzXDDhD3PeGbMcW94xOT+0H5rdwpmnXckD+EHn1k7x5rKtYQAPGT8kPf25pP0kzgGfNV05JAHM/qlcENYfRqGOQ25/upG5j8O5wfH/AIQL5aS08v8AAomqk05FfIVVM88qvssYd64KHNQrbHEnwR1oFE36lZa2ZdJJj9VpwG6l2xWbdcBC+1WCsgtSzUvQ1RzaB3bqJroXWtalqRtAsVVIVUGHKQqIg1DRVWxWQYet60Qah7blTNzKXNcrAUUhdQmlDXOcN3ET8lC6tu0IMx18f+VphRNMoNKqCrTsuoNgADAGEVSJE+KHa9WNqJaDYVk7lQt7NrXl43MeUjnHVVispiug4Jh2aH3D70sEJ5a8RgAzvuuKZcpnYuLtkssaYscjR2bbyc9UDc3kHdAFpGxQFeoUixIo8wzqX3iqHXo5pPUrlCVK5TrGK8w7fdNQ7rsJK+5KpdeIPEZZbG9auOSEfckJe69VT71LqPtYc+7KHfdoN10qXV0tDWTv6Tau+CNihre0YzO58dvRSdWVZqoUNZl9Q1wQYI/RBusndQUQaq12i1BsDcwjeQrKK1XqSfJVhym0Oiyo/wAVDVKi4ZW2rUZn0H7h7P4q5/pfQs9w9n8Vc+lL6F60sVN5exaR5L7h7P4q59KX0rPcPZ/FXPpS+hetLFt5ezUjyX3EWfxVz6UvoWe4iz+KufSl9C9aWLby9mpHk3uIs/irn0pfQs9xVp8Vc+lL6F6ysW3l7NqjycfYXafFXHpS+hb9xtp8VcelL6F6usR6kvZtUeVD7D7X4q49KX0KXuWtAY+915MkD/SkgRJjT4j1XqaSN4Ecy8bVdB05a5/Zw7VMuILCc5yM4W6kvYNF6OJP2MWo3u6/9LpP8vQFbH2MW3xVx6UvpXa1eCOc6XPa4AgtBaTA/wCoBmTvFYZ/2D5apcCImXiC1rQAHANADAWgA/hOkmOrit1JezaROMP2NW3xVf0pfSt+5m2+KuPSl9K7apwaXlwLY1te1pbMFoc3ffY4GwhatODuYWkva7SZ0lrtJOlg1wXHvy0mf9555W6kvYOnH0cUz7HbUgEXVcgiQR2RBB2IOlHWv2WUKe1zW+Yp/SuotODvZR7HtAcN7xB1HTohpg/g7pbAjukDeSdP4M4lx1gBwiGhwgaWt0Dvfg7pIHU+u6kvZunH0Iz9nVH/AO6p6M/shrn7M7eCTcVGgCSf9MAAbkkhddw7hvZOJDsHVjPOo9zefJrg3yaFB/Cf9F1LtajtTy8OqO1OH+p2gZIg6BGkAZA5obM3Tj6OId9mNoQD98qQ4FwM0oLW5JGMgDmqR9mFi7TF686iQ2HUTqI3DcZIXc0eDuFSnVNZznMDgQQ0tgh0AEgv/iGS4k6RKgeBmaZ15bBeYPef2naudExl04cDHLIR3l7B0oejhfdLZOGoXtUiQ2QaMaiQA2dO8kY8VSfshsDP/X1cODD3qGHkwGnu4dOIXcUfZoim1nbEaX03DS0Fv+mKYmH6iDDCBBAGqAIRT+FPioGvAD3Mc1p1ua0tqF7iAXYLpGBAEbLdSXsKxxXg8+H2K2ZcWC9rlwElo7HUAdiRpkKXuMtfi7n0pfQvRrLhzqdV79ZLXlxLe9GpxaZyYEQQIAw7OyYobMbVHk/uLtPi7n0pfQs9xVp8Xc+lL6F6wsQtmpHk3uJtPi7n0pfQs9xNp8Vc/wBL6F6ysQsNHkvuIs/irn+l9Cz3D2fxVz/S+hetLFjHkfuEsvirn+l9Kz3CWXxVz/S+leuLFjHkfuFs/irn+l9Kz3CWXxVz/S+leuLFjH//2Q=="> -->
<%@ include file="/files/footer.html" %>
</body>

</html>
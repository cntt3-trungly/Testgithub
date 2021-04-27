<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>Document</title>

<link
	href="<c:url value ="/resources//Boostrap/css/bootstrap.min.css"></c:url>"
	rel="stylesheet" />
<script src="<c:url value = "/resources/Boostrap/jquery-3.6.0.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value = "/resources/Boostrap/jquery-3.6.0.min.js"/>"></script>
<!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/> -->
<link
	href="<c:url value ="/resources/Boostrap/js/bootstrap.min.js"></c:url>"
	rel="stylesheet" />
<link
	href="<c:url value ="/resources/Boostrap/font-awesome-4.7.0/css/font-awesome.min.css"></c:url>"
	rel="stylesheet" />
<link href="<c:url value ="/resources/Styles/style.css"></c:url>"
	rel="stylesheet" />

<link href="<c:url value ="/resources/Styles/index.css"></c:url>"
	rel="stylesheet" />


</head>
<body>
	<div>
		<img
			src="https://www.accfb.org/wp-content/uploads/2018/06/Blog-icon.png"
			style="width: 50px; height: 50px;" class="ml-5">
		<h1 class="ml-3 font-weight-bold font-italic page_title">
			MY <span class="text-success">BLOG</span>
		</h1>
	</div>
	<div class="container-fluid mt-3">
		<nav class="navbar navbar-expand-sm navbar-light"
			style="background-color: #e3f2fd;">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href='<c:url value = "/"/>'>Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<c:url value = "/about"/>'>About</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<c:url value = "/contact"/>'>Contact</a></li>

				<c:choose>
					<c:when test="${User==null}">
						<li class="nav-item"><a class="nav-link text-info"
							href='<c:url value = "/login"/>'>Login</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link "
							href="<c:url value = "/addpost"/>">Add Post</a></li>
						<li class="nav-item"><a class="nav-link "
							href="<c:url value = "/postmm"/>">Manage Post</a></li>
						<li class="nav-item"><a class="nav-link "
							href="<c:url value = "/commentmm"/>">Manage Comment</a></li>

						<li class="nav-item"><a class="nav-link " href=""> </a></li>
						<li class="nav-item"><a class="nav-link " href=""> </a></li>
						<li class="nav-item"><a class="nav-link " href=""> </a></li>
						<li class="nav-item"><a
							class="nav-link text-success font-weight-bold font-italic ">Hello
								<span class="text-dark">${User.getUserName()}</span> !!!
						</a></li>

						<li class="nav-item"><a class="nav-link text-danger "
							href="<c:url value = "/logout"/>">Logout</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
	`
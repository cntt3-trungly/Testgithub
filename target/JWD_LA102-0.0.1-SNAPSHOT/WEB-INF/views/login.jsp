<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp"></jsp:include>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href='<c:url value ="/"/>'>Home</a></li>
		<li class="breadcrumb-item active" aria-current="page">Login</li>
	</ol>
</nav>

<div class="container p-3">
	<p class="h2 font-weight-bold">Login</p>
	<p class="mt-1">Please fill out following form with your login
		credentials</p>
	<p class="mt-1 font-italic font-weight-light">
		Fields with <span class="text-danger">*</span> are required
	</p>

	<form:form action="login" modelAttribute="Usermodel" method="post">
		<div class="row ">
			<div class="form-group col-md-6">
				<label for="username" class="font-weight-bold">UserName <span
					class="text-danger font-weight-bold">*</span></label>
				<form:input id="username" path="username" type="text"
					class="form-control" name="username" placeholder="your username" />
				<form:errors path="username" cssClass="text-danger" />
				
			</div>
		</div>
		<div class="row ">
			<div class="form-group col-md-6">
				<label for="password" class="font-weight-bold">Password <span
					class="text-danger">*</span></label>
				<form:input id="password" path="password" type="password"
					class="form-control" name="password" placeholder="your password" />
				<form:errors path="password" cssClass="text-danger"/>
			</div>
		</div>
		<p class="mt-1 font-italic font-weight-light">Hint: You may login
			with demo</p>
		<c:if test="${ not empty Error}">
			<span class="text-danger" id="password-eror">${Error}</span>
			<br />
		</c:if>

		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="defaultCheck1"> <label
				class="form-check-label font-weight-bold" for="defaultCheck1">
				Remember me next time </label>
		</div>

		<form:button type="submit" class="btn btn-success mt-2">Đăng nhập</form:button>
	</form:form>

</div>

<jsp:include page="Footer.jsp"></jsp:include>
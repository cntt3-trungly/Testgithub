<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="Header.jsp"></jsp:include>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item active" aria-current="page">Contact</li>
	</ol>
</nav>

<div class="container p-3 mt-3">
	<div class="row d-flex justify-content-between">
		<div class="col-md-7">
			<p class="h2 font-weight-bold">Contact Us</p>
			<p>If you have business inquiries or other questions, please fill
				out the following form to contact us. Thanks you</p>
			<p class="h5 font-italic font-weight-light mt-3">
				Fields with <span class="text-danger">*</span> are required
			</p>
			<form id="PostModal" action="addpost" method="post" class="mt-3">
				<div class="form-group">
					<label for="name" class="font-weight-bold">Name <span
						class="text-danger">*</span></label> 
						<input id="name" name="title"
						name="title" placeholder="Your full name" type="text"
						class="form-control haft" value="" />
				</div>
				<div class="form-group">
					<label for="email" class="font-weight-bold">Email <span
						class="text-danger">*</span></label> <input id="email" name="title"
						name="email" placeholder="Your email" type="text"
						class="form-control haft" value="" />
				</div>
				<div class="form-group">
					<label for="subject" class="font-weight-bold">Subject <span
						class="text-danger">*</span></label> <input id="subject" name="title"
						name="subject" placeholder="Your subject " type="text"
						class="form-control" value="" />
				</div>
				
				<div class="form-group">
					<label for="content" class="font-weight-bold">Body <span
						class="text-danger">*</span></label>
					<textarea id="content" name="content"
						class="form-control contentPost" rows="3"> </textarea>
				</div>

				<button type="submit" class="btn btn-success" type="submit"
					value="Submit">submit</button>

			</form>
		</div>
	</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>
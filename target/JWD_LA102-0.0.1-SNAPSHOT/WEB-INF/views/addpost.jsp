<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp"></jsp:include>


<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item active" aria-current="page">Create Post</li>
	</ol>
</nav>

<div class="container p-3 mt-3">
	<div class="row d-flex justify-content-between">
		<div class="col-md-7">
			<p class="h2 font-weight-bold">Create Post</p>
			<p class="h5 font-italic font-weight-light mt-3">
				Fields with <span class="text-danger">*</span> are required
			</p>
			<form id="PostModal" action="addpost" method="post" class="mt-3">
				<div class="form-group ">
					<label for="title" class="font-weight-bold">Title <span
						class="text-danger">*</span></label> <input id="title" name="title"
						name="title" placeholder="Post title" type="text"
						class="form-control" value="" />
				</div>
				<div class="form-group">
					<label for="content" class="font-weight-bold">Content <span
						class="text-danger">*</span></label>
					<textarea id="content" name="content"
						class="form-control contentPost" rows="3"> </textarea>
					<small id="emailHelp" class="form-text text-muted">You may
						use <a href="">Markdown syntax</a>
					</small>
				</div>
				<div class="form-group">
					<label for="tags" class="font-weight-bold">Tag</label> <input
						id="tags" name="tags" placeholder="tags" type="text"
						class="form-control" value="" /> <small id="emailHelp"
						class="form-text text-muted">Please separate different
						tags with commas</small>
				</div>
				<div class="form-group">
					<label for="status" class="font-weight-bold">Status <span
						class="text-danger">*</span></label> <select id="status" name="status"
						class="form-control">
						<option value="Draft">Draft</option>
						<option value="Published">Published</option>
						<option value="Over">Over</option>
					</select>
				</div>
				<button type="submit" class="btn btn-success" type="submit"
					value="Submit">Tạo bài post</button>

			</form>
		</div>
		<div class="col-md-3 ">
			<div class="row" style="margin-bottom: 20px">
				<div class="col-12">
					<p
						style="background-color: #a1c4fd; border-radius: 2px; padding: 4px">
						<Strong class="ml-2">Demo</Strong>
					</p>
				</div>
				<div class="col-12">
					<a href='<c:url value = "/addpost"/>' class="ml-2">Create New Post</a>
				</div>
				<div class="col-12">
					<a href='<c:url value = "/postmm"/>' class="ml-2" >Manage Posts</a>
				</div>
				<div class="col-12">
					<a href="#" class="ml-2">Approve Comments <span> (0)</span></a>
				</div>
				<div class="col-12">
					<a href='<c:url value = "/logout"/>' class="ml-2">Logout</a>
				</div>

			</div>
			<div class="row " style="margin-bottom: 20px">
				<div class="col-12 ">
					<p
						style="background-color: #a1c4fd; border-radius: 2px; padding: 4px">
						<Strong class="ml-2">Tag</Strong>
					</p>
				</div>

				<div class="col-12">
					<!-- Chỗ này foreach để hiển thị ra các tag -->
					<a href="#" class="ml-2">blog</a> <a href="#">test</a>
				</div>
			</div>

			<div class="row " style="margin-bottom: 20px">
				<div class="col-12">
					<p
						style="background-color: #a1c4fd; border-radius: 2px; padding: 4px">
						<Strong class="ml-2">Recent Comments</Strong>
					</p>
				</div>

				<div class="col-12">
					<span class="ml-2">Tester on </span><a href="#">A Test Post</a>

				</div>
			</div>
		</div>
	</div>


</div>

<jsp:include page="Footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp"></jsp:include>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item active" aria-current="page">Edit Post</li>
	</ol>
</nav>
<div class="container p-5">
	<p class="h2">Update Post</p>
	<div class="row">
		<div class="col-md-8">
			<form:form action="updatepost" modelAttribute="PostModalUpdate"
				method="post">
				<div class="form-group ">
					<form:input path="id" type="hidden" class="form-control" name="id"
						placeholder="Địa chỉ Email" value="${postEdit.getIdPost()}" />

				</div>
				<div class="form-group ">
					<label for="exampleInputEmail1">Title</label>
					<form:input path="title" type="text" class="form-control"
						name="title" placeholder="Địa chỉ Email"
						value="${postEdit.getTitle()}" />
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Content</label>


					<textarea class="form-control" id="content" rows="8" required
						name="content">${postEdit.getContent()}</textarea>
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Tag</label>

					<form:input path="tags" type="text" class="form-control"
						name="tags" placeholder="Địa chỉ Email"
						value="${postEdit.getTags()}" />
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleFormControlInput1">Status</label>
					<form:select path="status" name="status" class="form-control">
						<form:option value="draft">Draft</form:option>
						<form:option value="published">Published</form:option>
						<form:option value="outdated">Outdated</form:option>
					</form:select>
				</div>
				<br>
				<a class="btn btn-danger text-white"> <i class="fa fa-backward"></i></a>
				<form:button type="submit" class="btn btn-primary pb-2">
					<i class="fa fa-edit"></i> Update post</form:button>
			</form:form>
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
					<a href='<c:url value = "/addpost"/>' class="ml-2">Create New
						Post</a>
				</div>
				<div class="col-12">
					<a href='<c:url value = "/postmm"/>' class="ml-2">Manage Posts</a>
				</div>
				<div class="col-12">
						<a href='<c:url value = "/commentmm"/>' class="ml-2">Approve Comments <span> (0)</span></a>
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
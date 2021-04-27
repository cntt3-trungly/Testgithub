<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp"></jsp:include>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item active" aria-current="page">Manage Post</li>
	</ol>
</nav>

<div class="container mt-5">	
	<div class="row">
		<div class="col-md-8">
			<p class="h2">Manage Post</p>
			<table class="table table-hover table-striped mt-5">
				<thead class="thead-success " style="background-color: #a1c4fd; border-radius: 2px; padding: 4px">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Tittle</th>
						<th scope="col">Status</th>
						<th scope="col">Create Time</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${listPostUser.size()>0 }">
							<c:forEach var="listPost" items="${listPostUser }">
								<tr>
									<th scope="row">${listPost.getIdPost() }</th>
									<td>${listPost.getTitle() }</td>
									<td>${listPost.getStatus() }</td>
									<td>${listPost.getCreateTime() }</td>
									<td><a
										href="<c:url value ="/edit/${listPost.getIdPost()}"></c:url>"
										title="Edit"><i class="fa fa-edit"></i></a> <a href="#"><i
											class="fa fa-search-plus"></i></a> <a
										href="<c:url value ="/delete/${listPost.getIdPost()}"></c:url>"
										title="Delete"><i class="fa fa-trash"></i></a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td scope="col" rowspan="4">Emty</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>

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
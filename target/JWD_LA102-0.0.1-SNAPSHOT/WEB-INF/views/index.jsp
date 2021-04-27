<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="Header.jsp"></jsp:include>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb bg-white ml-5">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
	</ol>
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-8">
			<c:forEach var="post" items="${listPost}">
				<p class="h2 mt-5 font-weight-bold font-italic">${post.getTitle()}</p>
				<hr>
				<p class="font-italic">
					Posted by <span class="font-weight-bold">${post.getUser().getUserName()}</span>
					on <span>${post.getCreateTime()}</span>
				</p>

				<p>${post.getContent()}</p>

				<div class="" style="background-color: rgba(128, 128, 128, 0.089);">
					<p class="ml-3 pt-2">
						Tags: <a href="#">${post.getTags()}</a>
					</p>
					<div class="ml-3 pb-2">
						<a href="#">Permalink</a> | <a href="#">Comment (<span>${post.getComments().size()}
						</span> )
						</a> | <span class="font-italic">Last update on
							${post.getUpdateTime()}</span>
					</div>
				</div>
				<div class="container bootdey">
					<div class="col-md-12 bootstrap snippets">
						<div class="panel">
							<form id="CommentModal" class="panel-body" action="addcomment/${post.getIdPost()}" method="post" onsubmit="if (!(confirm('Comment của bạn đang được duyệt'))) return false">
								<textarea class="form-control" rows="2" name="content"
									placeholder="What are you thinking?"></textarea>
								<div class="mar-top clearfix">
									<button class="btn btn-sm btn-primary pull-right" type="submit" >
										<i class="fa fa-pencil fa-fw"></i> Share
									</button>
									<a
										class="btn btn-trans btn-icon fa fa-video-camera add-tooltip"
										href="#"></a> <a
										class="btn btn-trans btn-icon fa fa-camera add-tooltip"
										href="#"></a> <a
										class="btn btn-trans btn-icon fa fa-file add-tooltip" href="#"></a>
								</div>
							</form>
						</div>
						<c:forEach var="comment" items="${post.getComments()}">
						<c:if test="${comment.getStatus()=='published'}">
							<div class="panel">
								<div class="panel-body ">
									<!-- Newsfeed Content -->
									<!--===================================================-->
									<div class="media-block">
										<a class="media-left" href="#"><img
											class="img-circle img-sm" alt="Profile Picture"
											src="${comment.getUrl()}"></a>
										<div class="media-body ml-5">
											<div class="mar-btm">
												<a href="#"
													class="btn-link text-semibold media-heading box-inline">${comment.getAuthor()}</a>
												<p class="text-muted text-sm">
													<i class="fa fa-mobile fa-lg"></i> - From Laptop - 11 min
													ago
												</p>
											</div>
											<p>${comment.getContent()}</p>
											<div class="pad-ver">
												<div class="btn-group">
													<a class="btn btn-sm btn-default btn-hover-success"
														href="#"><i class="fa fa-thumbs-up"></i></a> <a
														class="btn btn-sm btn-default btn-hover-danger" href="#"><i
														class="fa fa-thumbs-down"></i></a>
												</div>
												<a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
											</div>
											<hr>

										</div>

									</div>
								</div>
							</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="col-md-3 ">
			<div class="row mt-5" style="margin-bottom: 20px">
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- menu left decorator -->
<%@ include file="/WEB-INF/views/includes/menuleft.jsp"%>

<!-- body decorator -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<div class="main-grids">
		<div class="recommended">
			<div class="recommended-grids english-grid">
				<div class="recommended-info">
					<div class="heading">
						<h3>Top Tin Tức</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
							ký</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="topvideo" items="${map.topVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${topvideo.img}"/>" alt="" /></a>
							<div class="time small-time sports-tome">
								<p>7:30</p>
							</div>
							<div class="clck sports-clock">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h5>
								<a href="single.html" class="title">Nullam interdum metus
									varius sit sed viverra</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${topvideo.numView}views</p>
						</div>
					</div>
				</c:forEach>

				<div class="clearfix"></div>
			</div>
		</div>
		<hr>
		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<a href="#">
							<h3>Tin Mới Nhất</h3>
						</a>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
							ký</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="newestvideo" items="${map.newestVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${newestvideo.img}"/>"
								alt="" /></a>
							<div class="time small-time sports-tome">
								<p>7:30</p>
							</div>
							<div class="clck sports-clock">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h5>
								<a href="single.html" class="title">${newestvideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${newestvideo.numView}views</p>
						</div>
					</div>
				</c:forEach>

				<div class="clearfix"></div>
			</div>
		</div>
		<hr>
		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Tin Thể Thao Phổ Biến</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
							ký</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="popuvideo" items="${map.popuVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${popuvideo.img}"/>" alt="" /></a>
							<div class="time small-time sports-tome">
								<p>7:30</p>
							</div>
							<div class="clck sports-clock">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h5>
								<a href="single.html" class="title">${popuvideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${popuvideo.numView}views</p>
						</div>
					</div>
				</c:forEach>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- footer decorator -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
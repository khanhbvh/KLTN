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
						<h3>Mới Nhất</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Phát
							tất cả</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="newestVideo" items="${map.newestVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${newestVideo.img}"/>"
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
								<a href="single.html" class="title">${newestVideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${newestVideo.numView}views</p>
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
							<h3>Top Nhạc Pop</h3>
						</a>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Phát
							tất cả</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="popVideo" items="${map.popVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${popVideo.img}"/>" alt="" /></a>
							<div class="time small-time sports-tome">
								<p>7:30</p>
							</div>
							<div class="clck sports-clock">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h5>
								<a href="single.html" class="title">${popVideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${popVideo.numView}views</p>
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
						<h3>Top Nhạc Hiphop</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Phát
							tất cả</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="hiphopVideo" items="${map.hiphopVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${hiphopVideo.img}"/>"
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
								<a href="single.html" class="title">${hiphopVideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${hiphopVideo.numView}views</p>
						</div>
					</div>
				</c:forEach>

				<div class="clearfix"></div>
			</div>
		</div>

		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Top Nhạc Jazz</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Phát
							tất cả</a>
					</div>
					<div class="clearfix"></div>
				</div>

				<c:forEach var="jazzVideo" items="${map.jazzVideoList}">
					<div
						class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.html"><img
								src="<c:url value="/resources/images/${jazzVideo.img}"/>" alt="" /></a>
							<div class="time small-time sports-tome">
								<p>7:30</p>
							</div>
							<div class="clck sports-clock">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h5>
								<a href="single.html" class="title">${jazzVideo.title}</a>
							</h5>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">${jazzVideo.numView}views</p>
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



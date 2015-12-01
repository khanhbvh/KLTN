<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- menu left decorator -->
<%@ include file="/WEB-INF/views/includes/menuleft.jsp"%>

<!-- body decorator -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<div class="show-top-grids">
		<div class="col-sm-10 show-grid-left main-grids">
			<div class="recommended">
				<div class="recommended-grids english-grid">
					<div class="recommended-info">
						<div class="heading">
							<h3>Tổng Hợp</h3>
						</div>
						<div class="heading-right">
							<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
								ký</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
			<div class="recommended">
				<div class="recommended-grids">
					<div class="recommended-info">
						<div class="heading">
							<h3>Mới Nhất</h3>
						</div>
						<div class="heading-right">
							<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
								ký</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:forEach var="newestVideo" items="${map.newestVideoList}">
						<div
							class="col-md-3 resent-grid recommended-grid movie-video-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img
									src="<c:url value="/resources/images/${newestVideo.img}"/>"
									alt="" /></a>
								<div class="time small-time show-time movie-time">
									<p>7:34</p>
								</div>
								<div class="clck movie-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div
								class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
								<h5>
									<a href="single.html" class="title">${newestVideo.title}</a>
								</h5>
								<ul>
									<li><p class="author author-info">
											<a href="#" class="author">John Maniya</a>
										</p></li>
									<li class="right-list"><p class="views views-info">${newestVideo.numView}
											views</p></li>
								</ul>
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
							<h3>Xem Nhiều</h3>
						</div>
						<div class="heading-right">
							<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
								ký</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<c:forEach var="topViewVideo" items="${map.topViewVideoList}">
						<div
							class="col-md-3 resent-grid recommended-grid movie-video-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img
									src="<c:url value="/resources/images/${topViewVideo.img}"/>"
									alt="" /></a>
								<div class="time small-time show-time movie-time">
									<p>2:34</p>
								</div>
								<div class="clck movie-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div
								class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
								<h5>
									<a href="single.html" class="title">${topViewVideo.title}</a>
								</h5>
								<ul>
									<li><p class="author author-info">
											<a href="#" class="author">John Maniya</a>
										</p></li>
									<li class="right-list"><p class="views views-info">${topViewVideo.numView}
											views</p></li>
								</ul>
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
							<h3>Yêu Thích</h3>
						</div>
						<div class="heading-right">
							<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng
								ký</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<c:forEach var="likeVideo" items="${map.likeVideoList}">
						<div
							class="col-md-3 resent-grid recommended-grid movie-video-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img
									src="<c:url value="/resources/images/${likeVideo.img}"/>"
									alt="" /></a>
								<div class="time small-time show-time movie-time">
									<p>5:32</p>
								</div>
								<div class="clck movie-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div
								class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
								<h5>
									<a href="single.html" class="title">${likeVideo.img}</a>
								</h5>
								<ul>
									<li><p class="author author-info">
											<a href="#" class="author">John Maniya</a>
										</p></li>
									<li class="right-list"><p class="views views-info">${likeVideo.numView}
											views</p></li>
								</ul>
							</div>
						</div>
					</c:forEach>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="col-md-2 show-grid-right">
			<h3>Upcoming Channels</h3>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">English Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Chinese Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Hindi Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Telugu Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Tamil Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Kannada Movies</a></li>
				</ul>
			</div>
			<div class="show-right-grids">
				<ul>
					<li class="tv-img"><a href="#"><img
							src="<c:url value="/resources/images/mv.png"/>" alt="" /></a></li>
					<li><a href="#">Marathi movies</a></li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- footer decorator -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- menu left decorator -->
<%@ include file="/WEB-INF/views/includes/menuleft.jsp"%>
<script type="text/javascript"
	src="<c:url value="/resources/js/responsiveslides.min.js" />">
	
</script>

<!-- body decorator -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<div class="main-grids">
		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Mới Nhất</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<script>
					// You can also use "$(window).load(function() {"
					$(function() {
						// Slideshow 4
						$("#slider1")
								.responsiveSlides(
										{
											auto : true,
											pager : false,
											nav : true,
											speed : 500,
											namespace : "callbacks",
											before : function() {
												$('.events')
														.append(
																"<li>before event fired.</li>");
											},
											after : function() {
												$('.events')
														.append(
																"<li>after event fired.</li>");
											}
										});

					});
				</script>
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider1">
						<li>
							<div class="animated-grids">
								<c:forEach var="newestfootballVideo1"
									items="${map.sportVideoList1}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${newestfootballVideo1.img}"/>"
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
												<a href="single.html" class="title">${newestfootballVideo1.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${newestfootballVideo1.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="newestfootballVideo2"
									items="${map.sportVideoList2}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${newestfootballVideo2.img}"/>"
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
												<a href="single.html" class="title">${newestfootballVideo2.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${newestfootballVideo2.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="newestfootballVideo3"
									items="${map.sportVideoList3}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${newestfootballVideo3.img}"/>"
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
												<a href="single.html" class="title">${newestfootballVideo3.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${newestfootballVideo3.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="newestfootballVideo4"
									items="${map.sportVideoList4}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${newestfootballVideo4.img}"/>"
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
												<a href="single.html" class="title">${newestfootballVideo4.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${newestfootballVideo4.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
					</ul>
				</div>

			</div>
		</div>

		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Đề Xuất</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<script>
					// You can also use "$(window).load(function() {"
					$(function() {
						// Slideshow 4
						$("#slider2")
								.responsiveSlides(
										{
											auto : true,
											pager : false,
											nav : true,
											speed : 500,
											namespace : "callbacks",
											before : function() {
												$('.events')
														.append(
																"<li>before event fired.</li>");
											},
											after : function() {
												$('.events')
														.append(
																"<li>after event fired.</li>");
											}
										});

					});
				</script>
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider2">
						<li>
							<div class="animated-grids">
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>

								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div
									class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="single.html"><img src="images/sp1.jpg" alt="" /></a>
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
										<p class="views">2,114,200 views</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
					</ul>
				</div>

			</div>
		</div>

		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Xem Nhiều</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<script>
					// You can also use "$(window).load(function() {"
					$(function() {
						// Slideshow 4
						$("#slider3")
								.responsiveSlides(
										{
											auto : true,
											pager : false,
											nav : true,
											speed : 500,
											namespace : "callbacks",
											before : function() {
												$('.events')
														.append(
																"<li>before event fired.</li>");
											},
											after : function() {
												$('.events')
														.append(
																"<li>after event fired.</li>");
											}
										});

					});
				</script>
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="animated-grids">
								<c:forEach var="viewVideo1" items="${map.viewVideoList1}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${viewVideo1.img}"/>"
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
												<a href="single.html" class="title">${viewVideo1.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${viewVideo1.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="viewVideo2" items="${map.viewVideoList2}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${viewVideo2.img}"/>"
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
												<a href="single.html" class="title">${viewVideo2.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${viewVideo2.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="viewVideo3" items="${map.viewVideoList3}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${viewVideo3.img}"/>"
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
												<a href="single.html" class="title">${viewVideo3.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${viewVideo3.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="viewVideo4" items="${map.viewVideoList4}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${viewVideo4.img}"/>"
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
												<a href="single.html" class="title">${viewVideo4.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${viewVideo4.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="recommended">
			<div class="recommended-grids">
				<div class="recommended-info">
					<div class="heading">
						<h3>Phổ Biến</h3>
					</div>
					<div class="heading-right">
						<a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<script>
					// You can also use "$(window).load(function() {"
					$(function() {
						// Slideshow 4
						$("#slider4")
								.responsiveSlides(
										{
											auto : true,
											pager : false,
											nav : true,
											speed : 500,
											namespace : "callbacks",
											before : function() {
												$('.events')
														.append(
																"<li>before event fired.</li>");
											},
											after : function() {
												$('.events')
														.append(
																"<li>after event fired.</li>");
											}
										});

					});
				</script>
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
							<div class="animated-grids">
								<c:forEach var="popuVideo1" items="${map.popuVideoList1}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${popuVideo1.img}"/>"
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
												<a href="single.html" class="title">${popuVideo1.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${popuVideo1.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="popuVideo2" items="${map.popuVideoList2}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${popuVideo2.img}"/>"
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
												<a href="single.html" class="title">${popuVideo2.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${popuVideo2.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="popuVideo3" items="${map.popuVideoList3}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${popuVideo3.img}"/>"
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
												<a href="single.html" class="title">${popuVideo3.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${popuVideo3.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="animated-grids">
								<c:forEach var="popuVideo4" items="${map.popuVideoList4}">
									<div
										class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
										<div class="resent-grid-img recommended-grid-img">
											<a href="single.html"><img
												src="<c:url value="/resources/images/${popuVideo4.img}"/>"
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
												<a href="single.html" class="title">${popuVideo4.title}</a>
											</h5>
											<p class="author">
												<a href="#" class="author">John Maniya</a>
											</p>
											<p class="views">${popuVideo4.numView}views</p>
										</div>
									</div>
								</c:forEach>
								<div class="clearfix"></div>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>
	<!-- footer decorator -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
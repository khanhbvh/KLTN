<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- menu left decorator -->
<%@ include file="/WEB-INF/views/includes/menuleft.jsp"%>

<script src="<c:url value="/resources/js/videojs/video.js" />"></script>
<script src="<c:url value="/resources/js/videojs/dash.all.js" />"></script>
<link href="<c:url value="/resources/css/videojs/video-js.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/videojs/videojs-dash.js" />"></script>
<script src="https://apis.google.com/js/plusone.js"></script>
<!-- body decorator -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<input type="hidden" id="edge"
		value="<c:url value="${path.linkmpdForEgle}"/>" /> <input
		type="hidden" id="others"
		value="<c:url value="${path.linkmpdChrFfIe}"/>" />

	<video id="videoplayer" class="video-js vjs-default-skin" controls
		width="1000px" height="565px" preload="auto">
		<source id="browser" src="${path.linkmpdForEgle}"
			type='application/dash+xml'>
	</video>
	<script>
		var player = document.getElementById('videoplayer');
		var browser = document.getElementById('browser');
		var edge = document.getElementById('edge').value;
		var others = document.getElementById('others').value;
		player.pause();
		if ((navigator.userAgent.indexOf("Opera") || navigator.userAgent
				.indexOf('OPR')) != -1) {
			$(browser).attr('src', others);
			player.load();
		}
		if (/Edge\/12./i.test(navigator.userAgent)) {
			$(browser).attr('src', edge);
		} else if (navigator.userAgent.indexOf("Chrome") != -1) {
			$(browser).attr('src', others);
			player.load();
		} else if (navigator.userAgent.indexOf("Safari") != -1) {
			$(browser).attr('src', others);
			player.load();
		} else if (navigator.userAgent.indexOf("Firefox") != -1) {
			$(browser).attr('src', others);
			player.load();

		} else if ((navigator.userAgent.indexOf("MSIE") != -1)
				|| (!!document.documentMode == true)) //IF IE > 10
		{
			$(browser).attr('src', others);
			player.load();
		}

		player.play();
	</script>
	<script>
		// Initalize the video.js player after videojs-contrib-dash has loaded
		var myPlayer = videojs('videoplayer');
	</script>


	<div class="show-top-grids">
		<div class="col-sm-8 single-left">
			<div class="song">
				<div class="song-info">
					<h3>Etiam molestie nisl eget consequat pharetra</h3>
				</div>
				<div class="video-grid">
					<iframe src="https://www.youtube.com/embed/oYiT-vLjhC4" allow
						fullscreen></iframe>
				</div>
			</div>
			<div class="song-grid-right">
				<div class="share">
					<h5>Share this</h5>
					<ul>
						<li><a href="#" class="icon fb-icon">Facebook</a></li>
						<li><a href="#" class="icon dribbble-icon">Dribbble</a></li>
						<li><a href="#" class="icon twitter-icon">Twitter</a></li>
						<li><a href="#" class="icon pinterest-icon">Pinterest</a></li>
						<li><a href="#" class="icon whatsapp-icon">Whatsapp</a></li>
						<li><a href="#" class="icon like">Like</a></li>
						<li><a href="#" class="icon comment-icon">Comments</a></li>
						<li class="view">200 Views</li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="published">
				<script type="text/javascript"
					src="<c:url value="/resources/js/jquery.min.js" />">
					
				</script>
				<script>
					$(document).ready(function() {
						size_li = $("#myList li").size();
						x = 1;
						$('#myList li:lt(' + x + ')').show();
						$('#loadMore').click(function() {
							x = (x + 1 <= size_li) ? x + 1 : size_li;
							$('#myList li:lt(' + x + ')').show();
						});
						$('#showLess').click(function() {
							x = (x - 1 < 0) ? 1 : x - 1;
							$('#myList li').not(':lt(' + x + ')').hide();
						});
					});
				</script>
				<div class="load_more">
					<ul id="myList">
						<li>
							<h4>Published on 15 June 2015</h4>
							<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel
								ultricies erat, vel sodales leo. Maecenas pellentesque, est
								suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
								dignissim diam velit id tellus. Morbi luctus velit quis semper
								egestas. Nam condimentum sem eget ex iaculis bibendum. Nam
								tortor felis, commodo faucibus sollicitudin ac, luctus a turpis.
								Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
						</li>
						<li>
							<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel
								ultricies erat, vel sodales leo. Maecenas pellentesque, est
								suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
								dignissim diam velit id tellus. Morbi luctus velit quis semper
								egestas. Nam condimentum sem eget ex iaculis bibendum. Nam
								tortor felis, commodo faucibus sollicitudin ac, luctus a turpis.
								Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
							<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel
								ultricies erat, vel sodales leo. Maecenas pellentesque, est
								suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
								dignissim diam velit id tellus. Morbi luctus velit quis semper
								egestas. Nam condimentum sem eget ex iaculis bibendum. Nam
								tortor felis, commodo faucibus sollicitudin ac, luctus a turpis.
								Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
							<div class="load-grids">
								<div class="load-grid">
									<p>Category</p>
								</div>
								<div class="load-grid">
									<a href="movies.html">Entertainment</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="all-comments">
				<div class="all-comments-info">
					<a href="#">All Comments (8,657)</a>
					<div class="box">
						<form>
							<input type="text" placeholder="Name" required=""> <input
								type="text" placeholder="Email" required=" "> <input
								type="text" placeholder="Phone" required=" ">
							<textarea placeholder="Message" required=" "></textarea>
							<input type="submit" value="SEND">
							<div class="clearfix"></div>
						</form>
					</div>
					<div class="all-comments-buttons">
						<ul>
							<li><a href="#" class="top">Top Comments</a></li>
							<li><a href="#" class="top newest">Newest First</a></li>
							<li><a href="#" class="top my-comment">My Comments</a></li>
						</ul>
					</div>
				</div>
				<div class="media-grids">
					<div class="media">
						<h5>Tom Brown</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Mark Johnson</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Steven Smith</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Marry Johne</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Mark Johnson</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Mark Johnson</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
					<div class="media">
						<h5>Peter Johnson</h5>
						<div class="media-left">
							<a href="#"> </a>
						</div>
						<div class="media-body">
							<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
								ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
								pretium hendrerit</p>
							<span>View all posts by :<a href="#"> Admin </a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 single-right">
			<h3>Up Next</h3>
			<div class="single-grid-right">
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r1.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r2.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r3.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r4.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r5.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r6.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							By <a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r1.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r2.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r3.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r4.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r5.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-right-grids">
					<div class="col-md-4 single-right-grid-left">
						<a href="single.html"><img
							src="<c:url value="/resources/images/r6.jpg"/>" alt="" /></a>
					</div>
					<div class="col-md-8 single-right-grid-right">
						<a href="single.html" class="title"> Nullam interdum metus</a>
						<p class="author">
							<a href="#" class="author">John Maniya</a>
						</p>
						<p class="views">2,114,200 views</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- footer decorator -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
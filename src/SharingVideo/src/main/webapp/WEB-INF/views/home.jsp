<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!doctype html>
<html>
<head>
<title>Home</title>
<link href="<c:url value="/resources/core/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/core/css/bootstrap-3.1.1.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/core/css/font-awesome-4.0.3.min.css" />"
	rel="stylesheet">

<style>
.comments .media-heading {
	margin-top: 25px;
}

.comments .comment-info {
	margin-left: 6px;
	margin-top: 21px;
}

.comments .comment-info .btn {
	font-size: 0.8em;
}

.comments .comment-info .fa {
	line-height: 10px;
}

.comments .media-body p {
	position: relative;
	background: #F7F7F7;
	padding: 15px;
	margin-top: 50px;
}

.comments .media-body p::before {
	background-color: #F7F7F7;
	box-shadow: -2px 2px 2px 0 rgba(178, 178, 178, .4);
	content: "\00a0";
	display: block;
	height: 30px;
	left: 20px;
	position: absolute;
	top: -13px;
	transform: rotate(135deg);
	width: 30px;
}

.white {
	color: #fff;
}
</style>

<script src="<c:url value="/resources/core/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/core/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/core/js/jquery.js" />"></script>

<!-- Thien -->
<!-- Loading Video.js CDN-hosted Scripts from videojs.com -->
<script src="<c:url value="/resources/js/videojs/video.js" />"></script>
<script src="<c:url value="/resources/js/videojs/dash.all.js" />"></script>

<!-- Load the videojs-contrib-dash stylesheet anywhere -->
<%--  <link href="<c:url value="/resources/css/videojs/video-js-dash.css" />" rel="stylesheet"> --%>
<link href="<c:url value="/resources/css/videojs/video-js.css" />" rel="stylesheet">
<!-- Load the videojs-contrib-dash script *after* both other projects -->
<script src="<c:url value="/resources/js/videojs/videojs-dash.js" />"></script>
<!-- end Thien -->


<script src="https://apis.google.com/js/plusone.js">
	
</script>

</head>
<body>
	<P>The time on the server is ${path.linkmpdForEgle}.</P>
	<div class="container" style="min-height: 500px">
		<!-- Standard video.js embed with a DASH source -->
		<input id="edge" value="<c:url value="${path.linkmpdForEgle}"/>" /> <input
			id="others" value="<c:url value="${path.linkmpdChrFfIe}"/>" />
		<video id="videoplayer" class="video-js vjs-default-skin" controls
			width="1000px" height="565px" preload="auto">
			 <source id="browser" src="${path.linkmpdForEgle}"
				type='application/dash+xml'> 
				
			<!-- <source id="browser" type='application/dash+xml'> -->
			<%-- <source src="<c:url value="${path.linkmpdChrFfIe}" />" type='application/dash+xml'> --%>
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
			/* player.pause();
			if (/Edge\/12./i.test(navigator.userAgent)) {
			 $(browser).attr('src',edge);
			} else {
			alert('others');
			
			$(browser).attr('src',others);
			
			} 
			player.play(); */
		</script>
		<form:form method="POST" action="/endcode">
			<td colspan="2"><input type="submit" value="Submit" /></td>
		</form:form>
		<script>
			// Initalize the video.js player after videojs-contrib-dash has loaded
			var myPlayer = videojs('videoplayer');
		</script>
		<div id="comments"></div>


		<div class="row">
			<div class="col-lg-8 col-sm-8 col-xs-12" style="padding-top: 15px;">

				<div class="media">

					<a class="pull-left" href="#"> <img
						class="media-object img-circle img-thumbnail"
						src="<c:url value="/resources/core/image/guest.png" />" width="82"
						alt="Generic placeholder image">
					</a>

					<div class="media-body">

						<form id="insert-form">
							<div class="form-group">
								<textarea id="content" class="form-control" rows="3"></textarea>
							</div>
							<div class="form-group text-right">
								<button type="submit" id="btnCancel" class="btn btn-default">Cancel</button>
								<button type="submit" id="btnSave" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-8 col-sm-8 col-xs-12">
				<hr>
				<ul class="media-list comments" id="lstComment">
				</ul>
			</div>
		</div>
	</div>

	<script>
		display();

		$(document).ready(function() {
			$('#btnCancel').click(function(e) {
				e.preventDefault();
				$('#content').val("");
			});

			$('#btnSave').click(function(e) {
				enableSearchButton(false);
				event.preventDefault();
				saveAjax();
			});
		});

		function enableSearchButton(flag) {
			$("#btnSave").prop("disabled", flag);
		}

		function saveAjax() {
			var content = $('#content').val();
			var json = {
				"videoId" : 1,
				"userId" : 1,
				"content" : content
			};

			$.ajax({
				url : "Comment/saveComment",
				data : JSON.stringify(json),
				type : "POST",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type", "application/json");
				},
				success : function(data) {
					display();
				},
				error : function(e) {
					alert("ERROR: Loi roi " + e);
				},
			});
		}

		function display() {
			$
					.ajax({
						url : "Comment/listComment",
						type : "POST",
						beforeSend : function(xhr) {
							xhr.setRequestHeader("Accept", "application/json");
							xhr.setRequestHeader("Content-Type",
									"application/json");
						},
						success : function(data) {
							var result = "";
							$
									.each(
											data,
											function(i, item) {
												result += "<li class='media'>";
												result += "<a class='pull-left' href='#'>";
												result += "<img class='media-object img-circle img-thumbnail' src='<c:url value='/resources/core/image/guest.png' />' width='64' alt='Generic placeholder image'>";
												result += "</a>"
												result += "<div class='media-body'>";
												result += "<h5 class='media-heading pull-left'>"
														+ item.userId + "</h5>";
												result += "<div class='comment-info pull-left'>";
												result += "<div class='btn btn-default btn-xs'></i> Date: "
														+ item.created
														+ "</div>";
												result += "</div>";
												result += "<br class='clearfix'>";
												result += "<p class='well'>"
														+ item.content + "</p>";
												result += "</div>";
												result += "</li>";
											});
							$('#lstComment').html(result);
							$('#content').val("");
						},
						error : function(e) {
							alert("ERROR: Loi lay danh sach comment " + e);
						},
					});
		}
	</script>

	<!-- 	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5&appId=452216981639634";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-href="http://localhost.local/sharingvideo"
  data-layout="button_count"
  data-show-faces="true">
</div>
    <div class="fb-share-button" 
        data-href="http://localhost.local/sharingvideo" 
        data-layout="button_count">
    </div>
<div class="fb-comments" data-href="http://localhost.local/sharingvideo" data-width="1000" data-numposts="5"></div>
</div> -->
</body>
</html>

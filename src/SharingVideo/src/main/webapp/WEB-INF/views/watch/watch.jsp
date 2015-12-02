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

<script>
	function sendAjax() {
		var params = $('#dataVideo').val();

		$.ajax({
			url : "close/doActionBefCloseWatch",
			data : params,
			type : "POST",
			beforeSend : function(xhr) {
				xhr.setRequestHeader("Accept", "application/json");
				xhr.setRequestHeader("Content-Type", "application/json");
			}
		});
	}
</script>

<body onbeforeunload="sendAjax()">

<div id="comments"></div>
<div class="row">
			<div class="col-lg-8 col-sm-8 col-xs-12" style="padding-top: 15px;">

				<div class="media">

					<a class="pull-left" href="#"> <img
						class="media-object img-circle img-thumbnail"
						src="<c:url value="/resources/core/image/guest.png" />" width="82"
						alt="Generic placeholder image">
					</a>
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

	<script>
		display();
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

<%-- <script src="<c:url value="/resources/scripts/knockout-3.0.0.js"/>"></script>
  <c:url value="/simplemessages" var="socketDest" />
  <script type="text/javascript">
            var stompClient = null;

            $(document).ready(function() {
                $("#disconnect").prop('disabled', true);
                $("#txtSendMessage").prop('disabled', false);
                $("#sendMessage").prop('disabled', false);

                //Also all text in server message should be empty
                $("#txtSendMessage").val("");
                $(".alert").hide();
                // Event handler: Connect button
                $("#formAlert").slideUp(400);
                    connect();
               
                $(".alert").find(".close").on("click", function(e) {
                    e.stopPropagation();

                    e.preventDefault();

                    // Hide this specific Alert
                    $(this).closest(".alert").slideUp(400);

                    // Focus on the Send Message textfield
                    $("#txtSendMessage").select();
                    $("#txtSendMessage").focus();
                });

                // Event handler: Send button
                $("#sendMessage").on("click", function(e) {

                    // Find the input text element for the server message
                    var messageForServer = $("#txtSendMessage").val();

                    if (messageForServer === "") {

                        // If message is empty prevent submission and show the alert
                        e.preventDefault();
                        $("#formAlert").slideDown(400);

                    } else {

                        // Message is not empty so send to server
                        $("#formAlert").slideUp(400);

                        // Show a please wait alert
                        $("#formInfoAlert").slideDown(400);

                        sendMessageToServer(messageForServer);
                    }
                });
            });

            function setConnected(connected) {
                // and input widgets
                $("#connect").prop('disabled', connected);
                $("#disconnect").prop('disabled', !connected);
                $("#sendMessage").prop('disabled', !connected);
                $("#txtSendMessage").prop('disabled', !connected)
            }

            function connect() {
                $("#response").empty();
                $("#txtSendMessage").val("");
                $("#txtSendMessage").focus();
                $("#txtSendMessage").select();
                var socket = new SockJS('${socketDest}');
                stompClient = Stomp.over(socket);
                stompClient.connect('', '', function(frame) {
                    setConnected(true);
                    stompClient.subscribe("/topic/simplemessagesresponse", function(servermessage) {//Callback when server responds
                        showServerBroadcast(JSON.parse(servermessage.body).messageContent, false);
                        //Server responded so hide the info alert
                        $("#formInfoAlert").slideUp(400);
                        //Also all text in server message input field should be empty
                        $("#txtSendMessage").val("");
                        $("#txtSendMessage").focus();
                        $("#txtSendMessage").select();
                    });
                });
            }

            function sendMessageToServer(messageForServer) {
                stompClient.send("/app/simplemessages", {}, JSON.stringify({
                    'content' : messageForServer,
                    'videoId' : 1,
    				'userId' : 1
                }));
            }

            function showServerBroadcast(servermessage, localMessage) {
                var decoded = $("<div/>").html(servermessage).text();

                var tmp = "";
                var serverResponse = document.getElementById("response");
                var p = document.createElement('p');
                p.style.wordWrap = 'break-word';

                if (localMessage) {
                    p.style.color = '#006600';
                    tmp = "<span class='glyphicon glyphicon-dashboard'></span> " + decoded + " (Browser time:" + getCurrentDateTime() + ")";
                } else {
                    p.style.color = '#8A0808';
                    tmp = "<span class='glyphicon glyphicon-arrow-right'></span> " + decoded;
                }
                //Assigning the decoded HTML to the <p> element
                p.innerHTML = tmp;
                serverResponse.appendChild(p);
            }

            function getCurrentDateTime() {
                var date = new Date();
                var n = date.toDateString();
                var time = date.toLocaleTimeString();
                return n + " @ " + time;
            }
        </script>
 --%>
 
 
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

	<div class="show-top-grids">
		<div class="col-sm-8 single-left">
			<div class="song">
				<div class="song-info">
					<h3>name</h3>
				</div>
				<div class="video-grid">
					<input type="hidden" id="dataVideo" // lay cai nay nha o
						value="<c:url value="${path.linkmpdForEgle}"/>" /> <input
						type="hidden" id="others"
						value="<c:url value="${path.linkmpdChrFfIe}"/>" />
					<video id="videoplayer" class="video-js vjs-default-skin" controls
						width="1000px" preload="auto">
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
				</div>
				
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
</body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>

<html>  
	<head>  
		<title>Being Java Guys | Spring DI Hello World</title>  
		<link href="<c:url value="/resources/core/css/bootstrap.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/core/css/bootstrap-3.1.1.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/core/css/font-awesome-4.0.3.min.css" />" rel="stylesheet">
		
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
			    box-shadow: -2px 2px 2px 0 rgba( 178, 178, 178, .4 );
			    content: "\00a0";
			    display: block;
			    height: 30px;
			    left: 20px;
			    position: absolute;
			    top: -13px;
			    transform: rotate( 135deg );
			    width:  30px;
			}
			
			.white {
			    color: #fff;
			}
		</style>
		
	    <script src="<c:url value="/resources/core/js/jquery.1.10.2.min.js" />"></script>
	    <script src="<c:url value="/resources/core/js/bootstrap.min.js" />"></script>
	    <script src="<c:url value="/resources/core/js/jquery.js" />"></script>
	</head>  
	
	<body>
		 <div class="container" style="min-height: 500px">
    		<div class="row">
				<div class="col-lg-8 col-sm-8 col-xs-12">
			        <div class="media">
			        	<a class="pull-left" href="#">
			        		<img class="media-object img-circle img-thumbnail" src="<c:url value="/resources/core/image/guest.png" />" width="82" alt="Generic placeholder image">
					    </a>
					    <div class="media-body">
					    	<form id="insert-form">
					    		<div class="form-group">
					    			<textarea id="content" class = "form-control" rows = "3"></textarea>
					    		</div>
						        <div class="form-group text-right">
									<button type="submit" id="btnCancel" class="btn btn-default">Hủy</button>
									<button type="submit" id="btnSave" class="btn btn-primary">Đăng</button>
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
			    var json = {"videoId" : 1, "userId": 1, "content" : content};
		
				$.ajax({
					url : "Comment/saveComment",
					data: JSON.stringify(json),
					type : "POST",
					beforeSend: function(xhr) {
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
				$.ajax({
					url : "Comment/listComment",
					type : "POST",
					beforeSend: function(xhr) {
			            xhr.setRequestHeader("Accept", "application/json");
			            xhr.setRequestHeader("Content-Type", "application/json");
			        },
					success : function(data){
						var result = "";
						$.each(data, function (i, item) {
							result += "<li class='media'>";
							result += "<a class='pull-left' href='#'>";
							result += "<img class='media-object img-circle img-thumbnail' src='<c:url value='/resources/core/image/guest.png' />' width='64' alt='Generic placeholder image'>";
							result += "</a>"
							result += "<div class='media-body'>";
							result += "<h5 class='media-heading pull-left'>" + item.userId + "</h5>";
							result += "<div class='comment-info pull-left'>";
							result += "<div class='btn btn-danger btn-xs' data-toggle='tooltip' data-placement='top'><i class='fa fa-user'></i></div>";
							result += "<div class='btn btn-primary btn-xs'><a class='fa fa-envelope white'></a></div>";
							result += "<div class='btn btn-default btn-xs'><i class='fa fa-clock-o'></i> Đăng ngày: " + item.created + "</div>";
							result += "</div>";
							result += "<br class='clearfix'>";
							result += "<p class='well'>" + item.content + "</p>";
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
	</body>  
</html>  
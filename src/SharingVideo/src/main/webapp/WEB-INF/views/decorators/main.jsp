<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>
<html>
<head>
<title>Sharing video application <decorator:title />
</title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/dashboard.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<script src="<c:url value="/resources/core/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/core/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/core/js/jquery.js" />"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.11.1.min.js" />">
</script>

<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.min.js" />">	
</script>

</head>

<body onbeforeunload="sendAjax()">
	<!-- header decorator -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>

	<!-- body render -->
	<decorator:body />
	<div class="clearfix"></div>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>

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
                            <a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng ký</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <c:forEach var="popShow" items="${map.popShowList}">
	                    <div class="col-md-2 resent-grid recommended-grid show-video-grid">
	                        <div class="resent-grid-img recommended-grid-img">
	                            <a href="single.html"><img src="<c:url value="/resources/images/${popShow.img}"/>" alt="" /></a>
	                            <div class="time small-time show-time">
	                                <p>7:34</p>
	                            </div>
	                            <div class="clck show-clock">
	                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                            </div>
	                        </div>
	                        <div class="resent-grid-info recommended-grid-info">
	                            <h5><a href="single.html" class="title">${popShow.title}</a></h5>
	                            <p class="author"><a href="#" class="author">John Maniya</a></p>
	                            <p class="views">${popShow.numView} views</p>
	                        </div>
	                    </div>
					</c:forEach>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="recommended">
                <div class="recommended-grids">
                    <div class="recommended-info">
                        <div class="heading">
                            <h3>Việt Nam</h3>
                        </div>
                        <div class="heading-right">
                            <a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng ký</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <c:forEach var="vietShow" items="${map.vietShowList}">
		                <div class="col-md-2 resent-grid recommended-grid show-video-grid">
	                        <div class="resent-grid-img recommended-grid-img">
	                            <a href="single.html"><img src="<c:url value="/resources/images/${vietShow.img}"/>" alt="" /></a>
	                            <div class="time small-time show-time">
	                                <p>2:34</p>
	                            </div>
	                            <div class="clck show-clock">
	                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                            </div>
	                        </div>
	                        <div class="resent-grid-info recommended-grid-info">
	                            <h5><a href="single.html" class="title">${vietShow.title}</a></h5>
	                            <p class="author"><a href="#" class="author">John Maniya</a></p>
	                            <p class="views">${vietShow.numView} views</p>
	                        </div>
	                    </div>
					</c:forEach>
				
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="recommended">
                <div class="recommended-grids">
                    <div class="recommended-info">
                        <div class="heading">
                            <h3>Âu - Mỹ</h3>
                        </div>
                        <div class="heading-right">
                            <a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng ký</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <c:forEach var="usShow" items="${map.usShowList}">
	                    <div class="col-md-2 resent-grid recommended-grid show-video-grid">
	                        <div class="resent-grid-img recommended-grid-img">
	                            <a href="single.html"><img src="<c:url value="/resources/images/${usShow.img}"/>" alt="" /></a>
	                            <div class="time small-time show-time">
	                                <p>5:32</p>
	                            </div>
	                            <div class="clck show-clock">
	                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                            </div>
	                        </div>
	                        <div class="resent-grid-info recommended-grid-info">
	                            <h5><a href="single.html" class="title">${usShow.title}</a></h5>
	                            <p class="author"><a href="#" class="author">John Maniya</a></p>
	                            <p class="views">${usShow.numView} views</p>
	                        </div>
	                    </div>
					</c:forEach>
					<div class="clearfix"> </div>
                </div>
            </div>
            <div class="recommended">
                <div class="recommended-grids">
                    <div class="recommended-info">
                        <div class="heading">
                            <h3>Ấn Độ</h3>
                        </div>
                        <div class="heading-right">
                            <a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng ký</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <c:forEach var="indiaShow" items="${map.indiaShowList}">
	                    <div class="col-md-2 resent-grid recommended-grid show-video-grid">
	                        <div class="resent-grid-img recommended-grid-img">
	                            <a href="single.html"><img src="<c:url value="/resources/images/${indiaShow.img}"/>" alt="" /></a>
	                            <div class="time small-time show-time">
	                                <p>5:09</p>
	                            </div>
	                            <div class="clck show-clock">
	                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                            </div>
	                        </div>
	                        <div class="resent-grid-info recommended-grid-info">
	                            <h5><a href="single.html" class="title">${indiaShow.title}</a></h5>
	                            <p class="author"><a href="#" class="author">John Maniya</a></p>
	                            <p class="views">${indiaShow.numView} views</p>
	                        </div>
	                    </div>
					</c:forEach>
					
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="recommended">
                <div class="recommended-grids">
                    <div class="recommended-info">
                        <div class="heading">
                            <h3>Thái Lan</h3>
                        </div>
                        <div class="heading-right">
                            <a href="#small-dialog8" class="play-icon popup-with-zoom-anim">Đăng ký</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <c:forEach var="thaiShow" items="${map.thaiShowList}">
	                    <div class="col-md-2 resent-grid recommended-grid show-video-grid">
	                        <div class="resent-grid-img recommended-grid-img">
	                            <a href="single.html"><img src="<c:url value="/resources/images/${thaiShow.img}"/>" alt="" /></a>
	                            <div class="time small-time show-time">
	                                <p>5:09</p>
	                            </div>
	                            <div class="clck show-clock">
	                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                            </div>
	                        </div>
	                        <div class="resent-grid-info recommended-grid-info">
	                            <h5><a href="single.html" class="title">${thaiShow.title}</a></h5>
	                            <p class="author"><a href="#" class="author">John Maniya</a></p>
	                            <p class="views">${thaiShow.numView} views</p>
	                        </div>
	                    </div>
					</c:forEach>
					
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 show-grid-right">
            <h3>Upcoming Channels</h3>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Spanish TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Italian TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Dutch TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Chinese TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Russian TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Hindi TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Telugu TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt="" /></a></li>
                    <li><a href="#">Tamil TV Shows</a></li>
                </ul>
            </div>
            <div class="show-right-grids">
                <ul>
                    <li class="tv-img"><a href="#"><img src="<c:url value="/resources/images/tv.png"/>" alt=""/></a></li>
                    <li><a href="#">Marathi TV Shows</a></li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>

    <!-- footer decorator -->
    <%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
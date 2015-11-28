<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>

<script type="text/javascript" src="<c:url value="/resources/js/responsiveslides.min.js" />"> </script>
		
<!-- menu left decorator -->
<%@ include file="/WEB-INF/views/includes/menuleft.jsp"%>

<!-- body decorator -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Mới Nhất</h3>
                </div>
                <c:forEach var="recentVideo" items="${map.recentVideoList}">
		            <div class="col-md-3 resent-grid recommended-grid">
	                    <div class="resent-grid-img recommended-grid-img">
	                        <a href="single.html"><img src="<c:url value="/resources/images/${recentVideo.img}"/>" alt="" /></a>
	                        <div class="time small-time">
	                            <p>7:30</p>
	                        </div>
	                        <div class="clck small-clck">
	                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                        </div>
	                    </div>
	                    <div class="resent-grid-info recommended-grid-info video-info-grid">
	                        <h5><a href="single.html" class="title">${recentVideo.title}</a></h5>
	                        <ul>
	                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
	                            <li class="right-list"><p class="views views-info">${recentVideo.numView} views</p></li>
	                        </ul>
	                    </div>
	                </div>
				</c:forEach>
               
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Đề Xuất</h3>
                </div>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider3").responsiveSlides({
                            auto: true,
                            pager: false,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <div id="top" class="callbacks_container">
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>7:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:23</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus varius viverra nullam sit amet viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:45</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Xem Nhiều</h3>
                </div>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider4").responsiveSlides({
                            auto: true,
                            pager: false,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });
                    });
                </script>
                <div id="top" class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="animated-grids">
                            	<c:forEach var="viewMostVideo1" items="${map.viewMostVideoList1}">
					                <div class="col-md-3 resent-grid recommended-grid slider-first">
	                                    <div class="resent-grid-img recommended-grid-img">
	                                        <a href="single.html"><img src="<c:url value="/resources/images/${viewMostVideo1.img}"/>" alt="" /></a>
	                                        <div class="time small-time slider-time">
	                                            <p>7:34</p>
	                                        </div>
	                                        <div class="clck small-clck">
	                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                                        </div>
	                                    </div>
	                                    <div class="resent-grid-info recommended-grid-info">
	                                        <h5><a href="single.html" class="title">${viewMostVideo1.title}</a></h5>
	                                        <div class="slid-bottom-grids">
	                                            <div class="slid-bottom-grid">
	                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
	                                            </div>
	                                            <div class="slid-bottom-grid slid-bottom-right">
	                                                <p class="views views-info">${viewMostVideo1.numView} views</p>
	                                            </div>
	                                            <div class="clearfix"> </div>
	                                        </div>
	                                    </div>
	                                </div>
								</c:forEach>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <c:forEach var="viewMostVideo2" items="${map.viewMostVideoList2}">
					               <div class="col-md-3 resent-grid recommended-grid slider-first">
	                                    <div class="resent-grid-img recommended-grid-img">
	                                        <a href="single.html"><img src="<c:url value="/resources/images/${viewMostVideo2.img}"/>" alt="" /></a>
	                                        <div class="time small-time slider-time">
	                                            <p>4:42</p>
	                                        </div>
	                                        <div class="clck small-clck">
	                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                                        </div>
	                                    </div>
	                                    <div class="resent-grid-info recommended-grid-info">
	                                        <h5><a href="single.html" class="title">${viewMostVideo2.title}</a></h5>
	                                        <div class="slid-bottom-grids">
	                                            <div class="slid-bottom-grid">
	                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
	                                            </div>
	                                            <div class="slid-bottom-grid slid-bottom-right">
	                                                <p class="views views-info">${viewMostVideo2.numView} views</p>
	                                            </div>
	                                            <div class="clearfix"> </div>
	                                        </div>
	                                    </div>
	                                </div>
								</c:forEach>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <c:forEach var="viewMostVideo3" items="${map.viewMostVideoList3}">
					               <div class="col-md-3 resent-grid recommended-grid slider-first">
	                                    <div class="resent-grid-img recommended-grid-img">
	                                        <a href="single.html"><img src="<c:url value="/resources/images/${viewMostVideo3.img}"/>" alt="" /></a>
	                                        <div class="time small-time slider-time">
	                                            <p>4:42</p>
	                                        </div>
	                                        <div class="clck small-clck">
	                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                                        </div>
	                                    </div>
	                                    <div class="resent-grid-info recommended-grid-info">
	                                        <h5><a href="single.html" class="title">${viewMostVideo3.title}</a></h5>
	                                        <div class="slid-bottom-grids">
	                                            <div class="slid-bottom-grid">
	                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
	                                            </div>
	                                            <div class="slid-bottom-grid slid-bottom-right">
	                                                <p class="views views-info">${viewMostVideo3.numView} views</p>
	                                            </div>
	                                            <div class="clearfix"> </div>
	                                        </div>
	                                    </div>
	                                </div>
								</c:forEach>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <c:forEach var="viewMostVideo4" items="${map.viewMostVideoList4}">
					               <div class="col-md-3 resent-grid recommended-grid slider-first">
	                                    <div class="resent-grid-img recommended-grid-img">
	                                        <a href="single.html"><img src="<c:url value="/resources/images/${viewMostVideo4.img}"/>" alt="" /></a>
	                                        <div class="time small-time slider-time">
	                                            <p>4:42</p>
	                                        </div>
	                                        <div class="clck small-clck">
	                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
	                                        </div>
	                                    </div>
	                                    <div class="resent-grid-info recommended-grid-info">
	                                        <h5><a href="single.html" class="title">${viewMostVideo4.title}</a></h5>
	                                        <div class="slid-bottom-grids">
	                                            <div class="slid-bottom-grid">
	                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
	                                            </div>
	                                            <div class="slid-bottom-grid slid-bottom-right">
	                                                <p class="views views-info">${viewMostVideo4.numView} views</p>
	                                            </div>
	                                            <div class="clearfix"> </div>
	                                        </div>
	                                    </div>
	                                </div>
								</c:forEach>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Phim Việt</h3>
                </div>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider5").responsiveSlides({
                            auto: true,
                            pager: false,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <div id="top" class="callbacks_container">
                    <ul class="rslides" id="slider5">
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>7:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:23</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus varius viverra nullam sit amet viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:45</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c3.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>4:42</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Varius sit sed viverra viverra nullam nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>6:14</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c1.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>2:34</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">varius sit sed viverra viverra nullam Nullam interdum metus</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">2,114,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 resent-grid recommended-grid slider-first">
                                    <div class="resent-grid-img recommended-grid-img">
                                        <a href="single.html"><img src="<c:url value="/resources/images/c2.jpg"/>" alt="" /></a>
                                        <div class="time small-time slider-time">
                                            <p>5:12</p>
                                        </div>
                                        <div class="clck small-clck">
                                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                    <div class="resent-grid-info recommended-grid-info">
                                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                                        <div class="slid-bottom-grids">
                                            <div class="slid-bottom-grid">
                                                <p class="author author-info"><a href="#" class="author">John Maniya</a></p>
                                            </div>
                                            <div class="slid-bottom-grid slid-bottom-right">
                                                <p class="views views-info">1,14,200 views</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
       	<div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Sports</h3>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/g.jpg"/>" alt="" /></a>
                        <div class="time small-time">
                            <p>7:30</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/g1.jpg"/>" alt="" /></a>
                        <div class="time small-time">
                            <p>9:34</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Nullam interdum viverra nullam metus varius sit sed viverra</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/g2.jpg"/>" alt="" /></a>
                        <div class="time small-time">
                            <p>5:34</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/g3.jpg"/>" alt="" /></a>
                        <div class="time small-time">
                            <p>6:55</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="recommended-grids">
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/we2.jpg"/>" alt=""></a>
                        <div class="time small-time">
                            <p>7:30</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/we1.jpg"/>" alt=""></a>
                        <div class="time small-time">
                            <p>9:34</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Nullam interdum viverra nullam metus varius sit sed viverra</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/we4.jpg"/>" alt=""></a>
                        <div class="time small-time">
                            <p>5:34</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Varius sit sed viverra nullam viverra nullam interdum metus</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 resent-grid recommended-grid">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="single.html"><img src="<c:url value="/resources/images/we3.jpg"/>" alt=""></a>
                        <div class="time small-time">
                            <p>6:55</p>
                        </div>
                        <div class="clck small-clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info video-info-grid">
                        <h5><a href="single.html" class="title">Nullam interdum metus viverra nullam varius sit sed viverra</a></h5>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
                            <li class="right-list"><p class="views views-info">2,114,200 views</p></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>

    <!-- footer decorator -->
    <%@ include file="/WEB-INF/views/includes/footer.jsp"%>
</div>
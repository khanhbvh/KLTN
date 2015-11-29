<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>

<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img">
            <img src="<c:url value="/resources/images/lines.png"/>" alt="" />
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="<c:url value='/home'/>" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li><a href="<c:url value='/shows'/>" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>Truyền Hình</a></li>
            <li><a href="<c:url value='/history'/>" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>Lịch sử</a></li>
            <li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>Phim<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <li><a href="<c:url value='/movies/vietnam'/>">Việt nam</a></li>
                <li><a href="<c:url value='/movies/uk'/>">Âu - Mỹ</a></li>
                <li><a href="<c:url value='/movies'/>">Ấn độ</a></li>
            </ul>
            <!-- script-for-menu -->
            <script type="text/javascript">
                $("li a.menu1").click(function () {
                    $("ul.cl-effect-2").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>Thể Thao<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-1">
                <li><a href="<c:url value='/sports/football'/>">Bóng đá</a></li>
                <li><a href="<c:url value='/sports/chess'/>">Cờ vua</a></li>
                <li><a href="<c:url value='/sports/voleyball'/>">Bóng chuyền</a></li>
                <li><a href="<c:url value='/sports/swimming'/>">Bơi lội</a></li>
            </ul>
            <!-- script-for-menu -->
           <script>
                $("li a.menu").click(function () {
                    $("ul.cl-effect-1").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <li><a href="<c:url value='/songs'/>" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>Bài Hát</a></li>
            <li><a href="<c:url value='/news'/>" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Tin Tức</a></li>
        </ul>
        <!-- script-for-menu -->
        <script>
            $(".top-navigation").click(function () {
                $(".drop-navigation").slideToggle(300, function () {
                    // Animation complete.
                });
            });
        </script>
        <div class="side-bottom">
            <div class="side-bottom-icons">
                <ul class="nav2">
                    <li><a href="#" class="facebook"> </a></li>
                    <li><a href="#" class="facebook twitter"> </a></li>
                    <li><a href="#" class="facebook chrome"> </a></li>
                    <li><a href="#" class="facebook dribbble"> </a></li>
                </ul>
            </div>
            <div class="copyright">
                <p>Copyright © 2015 My Play. All Rights Reserved | Design by <a href="https://daa.uit.edu.vn/">UIT Student</a></p>
            </div>
        </div>
    </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/compnay.css" rel="stylesheet">
    <script src="js/header.js"></script>
</head>
<body>
<form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>    
    <%@ include file="../Hambuger.jsp"%> 
    <div class="all">
        
        <%@ include file="../sub_header.jsp" %>
        <section class="section_real">
        <div class="middle_img">
            <img src="image/13cli-trees-01-wpgf-videoSixteenByNine3000.jpg" >
        </div>
        <!-- <div class="titleBox"><span>사업분야</span></div> -->
        <div class="middle_img_text">
            <h2>회사소개</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="../index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">회사소개</a></li>
                    <!-- <li><a href="">탄소중립</a></li> -->
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">회사소개</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                    <a href="company.html" class="active">- 회사소개</a>
                                    
                                </li>
                                
                                <li class="depth1">
                                    <a href="company_history.html" class="">- 연혁</a>
                                    
                                </li>
                                <li class="depth1">
                                    <a href="preson.html" class="">- 조직도</a>
                                    
                                </li>
                               
                            </ul>
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">회사소개</h3></div>
                        </div>
                        <div id="contents">
                            <img src="image/회사소개2.png" style="width: 100%;">
                        </div>
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../guide_bar.jsp" %>
    </section>
        <%@ include file="../footer.jsp"%> 
    </div>
</body>
</html>

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
        <section class="section_real" style="height: 1600px;">
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
                    <li><a href="company.html">회사소개</a></li>
                    <li><a href="company_history.html">연혁</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@include file="company_sidebar.jsp" %>
                      <!-- 우측 메인컨텐츠 -->
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">연혁</h3></div>
                        </div>
                        <div id="contents">
                            <img src="image/compnay_history.png" style=" width: 100%;">
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

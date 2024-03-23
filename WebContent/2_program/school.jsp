<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/header.css" rel="stylesheet">
    <script src="js/header.js"></script>
</head>
<body>
    
    <form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>    
    <%@ include file="../Hambuger.jsp"%> 
    <div class="all">
        
        <%@ include file="../sub_header.jsp" %>
        <section class="section_real" style="height: 1300px;">
        <div class="middle_img">
            <img src="image/13cli-trees-01-wpgf-videoSixteenByNine3000.jpg" >
        </div>
        <!-- <div class="titleBox"><span>사업분야</span></div> -->
        <div class="middle_img_text">
            <h2>사업분야</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">사업분야</a></li>
                    <li><a href="">학교 환경교육</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@include file="program_side.jsp" %>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">학교 환경교육</h3></div>
                        </div>
                        <div id="contents" style="text-align: center;">
                            <div>
                            <img src="2_program/picture/main image/학교 환경교육.jpg" style="width: 50%; border: rgb(178, 222, 154) solid 5px;">
                            <br>
                                <input type="button" onclick="goApply('reserve_user')" value="체험신청 바로가기" class="custom-btn btn-1">
                                <h2>학교 환경교육</h2>
                                
                                <p style="font-family: 'KimjungchulMyungjo-Light';">학생들에게 지속 가능한 발전과 환경 보호에 대한 중요성을 깨닫게 하고, 책임감 있는 시민으로 성장할 수 있는 기회를 제공합니다.</p>

                            </div>
                            <div>
                                <img src="2_program/picture/sub image/생태감수성.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/picture/sub image/탄소중립.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/picture/sub image/숲가치전통.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                            </div>
                            <div style="padding-top: 10px;">
                                <h2>참가대상</h2>
                                <ul>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 유치원,초등학교, 중학교, 고등학교 학생들</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">•  교사 및 교육 전문가</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">•  학교 관계자 및 학부모</li>
                                </ul> 
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../guide_bar.jsp" %>
    </section>
         <!-- 하단바 -->
         <footer>  
            <div class="footer_main">
                <div class="f_up">                             
                    <div class="inner">
                        <p style="font-size: 20px; color: white; text-align: right; width: 400px; float: left; height: 100px;"  >
                            체험안내문의<br>
                            (토/일/공휴일 휴뮤) 평일 : 09:00 ~ 18:00<br>
                            전화번호:010-7503-5370
                        </p>
                    </div>
                </div> 
                <div class="f_down">
                    <div class="f_down_1">
                        <ul class="f_down_ul">
                            <li style="color: white;"><a href="">이용약관</a></li>
                            <li style="color: white;" ><a href="">개인정보처리방침</a></li>
                            <li style="color: white;"><a href="">사업소개</a></li>
                        </ul>
                    </div>
                    <div class="f_down_2" >
                        <ul>   
                            <li>주식회사숲인들  </li>
                            <li>회사주소 :충남 당진시 사기소길 58-33  </li>
                            <li>Desingned by Flaticon</li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>

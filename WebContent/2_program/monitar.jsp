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
                    <li><a href="">녹색사업</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@include file="program_side.jsp" %>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">지역생태 모니터링</h3></div>
                        </div>
                        <div id="contents" style="text-align: center;">
                            <div>
                            <img src="2_program/picture/main image/지역 모니터링.jpg" style="width: 50%; border: rgb(178, 222, 154) solid 5px;">
                            <br>
                                <input type="button" onclick="goApply('reserve_user')" value="체험신청 바로가기" class="custom-btn btn-1">
                                <h2>지역생태 모니터링</h2>
                                <p style="font-family: 'KimjungchulMyungjo-Light';">
                                    지역생태모니터링은 참가자들이 지역 생태계에 직접 참여하고 관찰할 수 있는 활동을 포함합니다. 야외 활동을 통해 다양한 생물과 식물을 발견하며 지역 환경을 더 깊이 이해할 수 있습니다.
                                    </p>
                            </div>
                            <div>
                                <img src="2_program/picture/sub image/산천나들이.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/picture/sub image/물속세상.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                            </div>
                            <div style="padding-top: 10px;">
                                <h2>참가대상</h2>
                                <ul>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 지역 주민 및 지역사회 단체</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 학교 및 교육 기관</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 환경에 관심 있는 모든 이</li>
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

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
                    <li><a class="home" href="../index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">사업분야</a></li>
                    <li><a href="">기관 숲체험 프로그램</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@include file="program_side.jsp" %>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">기관 숲체험 프로그램</h3></div>
                        </div>
                        <div id="contents" style="text-align: center;">
                            <div>
                            <img src="2_program/picture/main image/기관숲체험.jpg" style="width: 50%; border: rgb(178, 222, 154) solid 5px;">
                            <br>
                                <input type="button" onclick="" value="체험신청 바로가기" class="custom-btn btn-1">
                                <h2>기관 숲체험 프로그램</h2>
                                <p style="font-family: 'KimjungchulMyungjo-Light';">일상의에서 벗어나 푸르른 자연 속에서 새로운 경험을 즐겨보세요. <br> 
                                    도시의 소음과 스트레스에서 벗어나 푸른 숲의 풍요로운 에너지를 만끽할 수 있는 체험입니다.</p>
                            </div>
                            <div>
                                <img src="2_program/picture/sub image/숲체험.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/picture/sub image/유아숲.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/picture/sub image/전연령숲체험.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                            </div>
                            <div style="padding-top: 10px;">
                                <h2>참가대상</h2>
                                <ul>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 기업 단체 및 팀</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 학교 및 교육 기관</li>
                                    <li style="font-family: 'KimjungchulMyungjo-Light';">• 친구, 가족 단위</li>
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

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
                    <!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">사업분야</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                    <a href="sub.html" class="active">- 기관 숲체험 프로그램</a> <div class="depth1-image"></div>
                                    <ul class="depth2"  style="display: block;">
                                        <li><a href="1_forest/forestcpgja.html">• 숲체험</a></li>
                                        <li><a href="1_forest/kid forest.html">• 유아숲 체험</a></li>
                                        <li><a href="1_forest/payforest.html">• 전연령 숲체험</a></li>
                                    </ul>
                                </li>
                                <li class="depth1">
                                    <a href="green.html" class="">- 녹색사업</a> <div class="depth1-image"></div>
                                    <ul class="depth2" >
                                        <li><a href="2_greenprogram/nongim.html">• 농임업 임산물</a></li>
                                        <li><a href="2_greenprogram/sanrim.html">• 산림 에코힐링</a></li>
                                        <li><a href="2_greenprogram/wekkendfram.html">• 주말농장</a></li>
                                    </ul>
                                </li>
                                <li class="depth1">
                                    <a href="forestheal.html" class="">- 숲치유</a> <div class="depth1-image"></div>
                                    <ul class="depth2" >
                                        <li><a href="3_forestheall/sarimteraip.html">• 산림테라피</a></li>
                                        <li><a href="3_forestheall/forestframing.html">• 숲놀이파밍</a></li>
                                        <li><a href="3_forestheall/forestinmun.html">• 숲과인문학</a></li>
                                    </ul>
                                </li>
                                <li class="depth1">
                                    <a href="school.html" class="">- 학교 환경교육</a> <div class="depth1-image"></div>
                                    <ul class="depth2">
                                        <li><a href="4_scholl/1.html">• 생태감수성</a></li>
                                        <li><a href="4_scholl/2.html">• 탄소중립</a></li>
                                        <li><a href="4_scholl/3.html">• 숲가치전통</a></li>
                                    </ul>
                                </li>
                                <li class="depth1">
                                    <a href="monitar.html" class="">-지역생태 모니터링</a> <div class="depth1-image"></div>
                                    <ul class="depth2" >
                                        <li><a href="5_monitarr/sancun.html">• 산천나들이</a></li>
                                        <li><a href="5_monitarr/water.html">• 물속세상</a></li>
                                    </ul>
                                    </li>
                                    <li class="depth1">
                                        <a href="local.html" class="">- 로컬 먹거리 직구</a>
                                    </li>  
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
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


        <!-- 가이드바 -->
        <ul class="guide_bar">
            <li>
                <a href=""><img src="..//picture/iconmonstr-tree-2-240.png"></a>
                <span>회사소개</span>
            </li>
            <li>
                <a href=""><img src="..//picture/iconmonstr-file-22-240.png"></a>
                <span>프로그램 안내</span>
            </li>
            <li>
                <a href=""><img src="..//picture/iconmonstr-note-23-240.png"></a>
                <span>체험신청</span>
            </li>
            <li>
                <a href=""><img src="..//picture/iconmonstr-help-6-240.png"></a>
                <span>질문</span>
            </li>
        </ul>
        <a href="#" class="page_top">TOP</a>
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

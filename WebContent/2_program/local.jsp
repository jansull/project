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
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">로컬 먹거리 직구</h3></div>
                        </div>
                        <div id="contents" style="text-align: center;">
                            <div>
                            <img src="2_program/picture/main image/로컬 먹거리 직구.jpg" style="width: 50%; border: rgb(178, 222, 154) solid 5px;">
                            <br>
                                <input type="button" onclick="goApply('reserve_user')" value="체험신청 바로가기" class="custom-btn btn-1">
                                <h2 style="font-family: 'KimjungchulMyungjo-Bold';">로컬 먹거리 직구</h2>
                                <p style="font-family: 'KimjungchulMyungjo-Light';">다양한 지역 특산물을 직접 구매하여 그 지역만의 특별한 맛을 경험할 수 있습니다. 신선하고 풍부한 맛으로 여행하지 않은 듯한 즐거움을 선사합니다.</p>
                            </div>
                            <!-- <div>
                                <img src="2_program/2_program/picture/sub image/숲체험.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/2_program/picture/sub image/유아숲.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                                <img src="2_program/2_program/picture/sub image/전연령숲체험.jpg" style="width: 30%; border: rgb(178, 222, 154) solid 5px;">
                            </div> -->
                            <div style="padding-top: 10px;">
                                <h2 style="font-family: 'KimjungchulMyungjo-Bold';">지속 가능한 소비 실천</h2>
                                <p>로컬먹거리 직구는 지역 농산물과 소산물을 직접 구매하는 것으로 지속 가능한 소비에 도움을 줍니다. 지역 농민과 생산자들을 지원하여 지역 경제에 기여할 수 있습니다.</p>
                            </div>
                            <div style="padding-top: 10px;">
                                <h2 style="font-family: 'KimjungchulMyungjo-Bold';">맛의 다양성과 발견</h2>
                                <p style="font-family: 'KimjungchulMyungjo-Light';">
                                    맛의 다양성과 발견:지역마다 독특한 특산품이 존재하며, 로컬먹거리 직구를 통해 그 독특한 맛을 집에서 즐길 수 있습니다. 새로운 맛과 발견을 통해 일상에 활기를 불어넣어보세요.
                                    본 주식회사는 프로그램 진행시 공개된  농임산물로 한정 합니다. 다양한 농산물 직거래로
                                    보답하겠습니다.</p>
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

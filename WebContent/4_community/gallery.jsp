<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/gallery.css" rel="stylesheet">
    <script src="js/header.js"></script>
</head>
<body>
    <form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>   
    <%@ include file="../Hambuger.jsp"%> 
    <div class="all">
        
        <%@ include file="../sub_header.jsp" %>
        <div class="middle_img">
            <img src="image/13cli-trees-01-wpgf-videoSixteenByNine3000.jpg" >
        </div>
        <!-- <div class="titleBox"><span>사업분야</span></div> -->
        <div class="middle_img_text">
            <h2>커뮤니티</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">커뮤니티</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@ include file="community_sidebar.jsp"%>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3>갤러리</h3></div>
                        </div>
                        <div id="contents">
                            <!-- <table style="border:1px solid #CCC;width:100%;margin-bottom:50px;">
                                <tbody>
                                    <tr>
                                        <td style="width: 10%; align:center;">
                                            <div style="width:80%; margin:0 10%;">
                                                <img src="/picture/113945770_p53.png" style="width: 150%;">
                                            </div>
                                        </td>
                                        <td style="width: 90%; padding: 20px 30px">
                                            <p style="font-size:1.5em;font-weight:bold;color:#063;">계좌안내</p>
                                            <span style="color:#FC0;font-size:1.1em;">농ㅋㅋ협 301-19191-차이나</span>
                                            <span style="font-size:1em;">주식회사 님블뉴런망해라연구소</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table> -->
                            <h2 class="contents_title">
                                갤러리
                                <!-- <span class="sound_only"> 목록</span> -->
                            </h2>
                            <!-- bo = board -->
                            <div class="bo_list">
                                <div class="bo_fx">
                                    <div class="bo_list_total">
                                        <span>Total 315건 / 1페이지</span>
                                    </div>
                                    <ul class="btn_bo_user">
                                        <li><a href="javascript:goCommunity('gallery_write')" class="btn1">글쓰기</a></li>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                    <table >
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <p>
                                                        <img src="4_community/picture/cpgja.png">
                                                    </p>
                                                    <div>
                                                        <h3>2023 녹색사업 갤러리</h3>
                                                         <p>녹색사업은 지속 가능한 미래를 위한 핵심입니다.</p>
                                                         <p style="text-align: left; float: left;">190</p>
                                                         <p style="text-align: right;">2012-08-09</p>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <p>
                                                        <img src="4_community/picture/cpgja.png">
                                                    </p>
                                                    <div>
                                                        <h3>2023 녹색사업 갤러리</h3>
                                                         <p>녹색사업은 지속 가능한 미래를 위한 핵심입니다.</p>
                                                         <p style="text-align: left; float: left;">조회수</p>
                                                         <p style="text-align: right;">날짜</p>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <p>
                                                        <img src="4_community/picture/cpgja.png">
                                                    </p>
                                                    <div>
                                                        <h3>2023 녹색사업 갤러리</h3>
                                                         <p>녹색사업은 지속 가능한 미래를 위한 핵심입니다.</p>
                                                         <p style="text-align: left; float: left;">조회수</p>
                                                         <p style="text-align: right;">날짜</p>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                        
                                        
                                    </table>

                                    <div class="bo_fx">
                                        <ul class="btn_bo_user">
                                            <li><a href="" class="btn1">글쓰기</a></li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../guide_bar.jsp" %>

        <%//@ include file="../footer.jsp"%> <!-- 수정 해야함;;(section 크기 조절) -->
        
    </div>
</body>
</html>

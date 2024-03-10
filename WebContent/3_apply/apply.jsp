<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/apply.css" rel="stylesheet">
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
            <h2>체험신청</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">체험신청</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">체험신청</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                    <a href="javascript:;" class="active">- 체험신청</a>
                                 
                                </li>
                                
                                
                            </ul>
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3>체험신청</h3></div>
                        </div>
                        <div id="contents">
                            <table style="border:1px solid #CCC;width:100%;margin-bottom:50px;">
                                <tbody>
                                    <tr>
                                        <td style="width: 10%; align:center;">
                                            <div style="width:80%; margin:0 10%;">
                                                <img src="image/coin.png" style="width: 150%;">
                                            </div>
                                        </td>
                                        <td style="width: 90%; padding: 20px 30px">
                                            <p style="font-size:1.5em;font-weight:bold;color:#063;">계좌안내</p>
                                            <span style="color:#FC0;font-size:1.1em;">농협 301-19191-123456</span>
                                            <span style="font-size:1em;">주식회사 숲인들 생태환경두드림</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <h2 class="contents_title">
                                체험신청
                                <!-- <span class="sound_only"> 목록</span> -->
                            </h2>
                            <!-- bo = board -->
                            <div class="bo_list">
                                <div class="bo_fx">
                                    <div class="bo_list_total">
                                        <span>Total 315건 / 1페이지</span>
                                    </div>
                                    <ul class="btn_bo_user">
                                        <li><a href="reserve.html" class="btn1">글쓰기</a></li>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                    <table>
                                        <caption>체험신청 목록</caption>
                                        <thead> </thead>
                                        <colgroup>
                                            <col style="width:50;">
                                            <col style="width:300;">
                                            <col style="width:110;">
                                            <col style="width:80;">
                                            <col style="width:110;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="col">번호</th>
                                                <th scope="col">접수내용</th>
                                                <th scope="col">이름</th>
                                                <th scope="col">
                                                    <a href="">예약일자</a>
                                                </th>
                                                <th scope="col">상태</th>
                                            </tr>
                                        </tbody>
    
                                        <tbody>
                                            <tr class>
                                                <td class="td_num">315</td>
                                                <td class="td_subject">
                                                    <a href="">봇치더락 밴드 체험 신청합니다1</a>
                                                </td>
                                                <td class="center">
                                                    <span>bocchi</span>
                                                </td>
                                                <td class="td_date">..</td>
                                                <td class="td_num">
                                                    <a href="" class="btn2">예약대기</a>
                                                </td>
                                            </tr>
                                        </tbody>

                                        <tbody>
                                            <tr class>
                                                <td class="td_num">315</td>
                                                <td class="td_subject">
                                                    <a href="">봇치더락 밴드 체험 신청합니다2</a>
                                                </td>
                                                <td class="center">
                                                    <span>bocchi</span>
                                                </td>
                                                <td class="td_date">..</td>
                                                <td class="td_num">
                                                    <a href="" class="btn2">예약대기</a>
                                                </td>
                                            </tr>
                                        </tbody>

                                        <tbody>
                                            <tr class>
                                                <td class="td_num">315</td>
                                                <td class="td_subject">
                                                    <a href="">봇치더락 밴드 체험 신청합니다3</a>
                                                </td>
                                                <td class="center">
                                                    <span>bocchi</span>
                                                </td>
                                                <td class="td_date">..</td>
                                                <td class="td_num">
                                                    <a href="" class="btn2">예약대기</a>
                                                </td>
                                            </tr>
                                        </tbody>

                                        <tbody>
                                            <tr class>
                                                <td class="td_num">315</td>
                                                <td class="td_subject">
                                                    <a href="">봇치더락 밴드 체험 신청합니다4</a>
                                                </td>
                                                <td class="center">
                                                    <span>bocchi</span>
                                                </td>
                                                <td class="td_date">..</td>
                                                <td class="td_num">
                                                    <a href="" class="btn2">예약대기</a>
                                                </td>
                                            </tr>
                                        </tbody>

                                        <tbody>
                                            <tr class>
                                                <td class="td_num">315</td>
                                                <td class="td_subject">
                                                    <a href="">봇치더락 밴드 체험 신청합니다5</a>
                                                </td>
                                                <td class="center">
                                                    <span>bocchi</span>
                                                </td>
                                                <td class="td_date">..</td>
                                                <td class="td_num">
                                                    <a href="" class="btn2">예약대기</a>
                                                </td>
                                            </tr>
                                        </tbody>
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


        <!-- 가이드바 -->
        <ul class="guide_bar">
            <li>
                <a><img src="..//picture/iconmonstr-tree-2-240.png"></a>
                <span>회사소개</span>
            </li>
            <li>
                <a><img src="..//picture/iconmonstr-file-22-240.png"></a>
                <span>프로그램 안내</span>
            </li>
            <li>
                <a><img src="..//picture/iconmonstr-note-23-240.png"></a>
                <span>체험신청</span>
            </li>
            <li>
                <a><img src="..//picture/iconmonstr-help-6-240.png"></a>
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

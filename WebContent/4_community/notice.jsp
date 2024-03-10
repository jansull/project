<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/apply.css" rel="stylesheet">
    <script>
    	function goCompany(gubun){
    		pagemove.t_gubun.value=gubun;
    		pagemove.method="post";
    		pagemove.action="Company";
    		pagemove.submit();
    	}
    	function goCommunity(gubun){
    		pagemove.t_gubun.value=gubun;
    		pagemove.method="post";
    		pagemove.action="Community";
    		pagemove.submit();
    	}
    
    
    </script>
</head>
<body>
<form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>    
    <!-- 햄버거 버튼-->
    <div class="hidden_hambeger">
        <div class="hidden_hambeger_menubar">
            <div class="menu-trigger_close">
                <img src="image/logo_font.png" style="width: 170px;">
                <a href="#">
                    <img src="image/iconmonstr-x-mark-thin-240.png" alt="">
                </a>
            </div>
            
            <!-- <div class="h_h_header"><img src="picture/logo_font.png" alt=""></div> -->
            <ul class="h_h_ul">
                <li><a href="" class="h_h_ul_a">회사소개</a></li>
                <li class="h_pro"><a href="" class="h_h_ul_a"  >사업분야</a>
                    <a href="" class="h_pro_a">+</a>
                    <a href="" class="h_pro_a2">-</a>
                    <ul class="h_pro_ul">
                        <li><a href="">숲치유</a></li>
                        <li><a href="">학교 환경교육</a></li>
                        <li><a href="">지역생태 모니터링</a></li>
                        <li><a href="">전연령 전문업</a></li>
                        <li><a href="">농 임업 임산물</a></li>
                        
                    </ul>
                </li>
                <li><a href="" class="h_h_ul_a">체험신청</a></li>
                <li><a href="" class="h_h_ul_a">커뮤니티</a></li>
            </ul>
            <div class="h_h_footer"></div>
        </div>
    </div>
    <div class="all">
        
        <header>
            
            <!-- header grid 정리 -->
            <div class="header_container">
                <!-- 로그인, 회원가입 -->
                <div class="top_left_index"> </div>
                <div class="top_menu">
                   
                    <!-- <ul class="top_ui">
                        <a href="">로그인</a>
                        <a href="">회원가입</a>
                        <li class="menu0"> </li>
                    </ul> -->
                </div>
                <div class="top_right_index"> </div>
                
                <!-- 상단바 -->
                <div class="menu_left_index"> </div>
                    <div class="menu_logo"> 
                        <a href="../index.html"><img src="image/logo_font.png"></a>
                    </div>
                <div class="menu_middle_index"> </div>
                    <div class="menu_bar">
                        <ul class="first_menu">
                            <li class="menu_1"><a href="../1_compnay/company.html">회사소개</a></li>
                            <li class="menu_2"><a href="../2_program/sub.html">사업분야</a></li>
                            <li class="menu_3"><a href="../3_apply/apply.html">체험신청</a></li>
                            <li class="menu_4"><a href="../4_community/notice.html">커뮤니티</a></li>
                        </ul>
                        
                    </div>
                    <div class="menu_right_index"> </div>

                <!-- 히든바 -->
                <div class="hidden_bar_1 hb"> 
                    <ul class="down_bar">
                        <div class="down_bar_logo1">
                            <div class="logo1_text">
                                <li href="" class="logo_text_main"><a href="">회사소개</a></li>
                                <li href="" class="logo_text_sub">
                                    <a href="">지구의 미래를 키우는 기업<br></a>
                                    <a href="">환경과 함께 성장해나가는 기업이 되겠습니다.</a>
                                </li>
                            </div>
                            <div class="logo_image"><img src="image/worldwide.png"></div>
                        </div>
                        <li><a href="" class="top_main">회사소개</a></li>
                        <li><a href="" class="top_main">오시는길</a></li>
                        <li><a href="" class="top_main">연혁</a></li>
                        <li><a href="" class="top_main">조직도</a></li>
                    </ul>
                </div>
                <div class="hidden_bar_2 hb"> 
                    <ul class="down_bar">
                        <div class="down_bar_logo1">
                            <div class="logo1_text">
                                <li href="" class="logo_text_main"><a href="">사업분야</a></li>
                                <li href="" class="logo_text_sub">
                                    <a href="">지구의 미래를 키우는 기업<br></a>
                                    <a href="">환경과 함께 성장해나가는 기업이 되겠습니다.</a>
                                </li>
                            </div>
                            <div class="logo_image"><img src="image/planet-earth.png"></div>
                        </div>
                        <li><a href="" class="top_main">기관 숲체험 프로그램</a>
                            <a href="" class="top_sub">전연령 숲체험</a>
                            <a href="" class="top_sub">유아숲 체험</a>
                            <a href="" class="top_sub">유로숲 체험</a>
                        </li>
                        <li><a href="" class="top_main">녹색사업</a>
                            <a href="" class="top_sub">농임업 임산물체험</a>
                            <a href="" class="top_sub">산림 에코힐링</a>
                            <a href="" class="top_sub">주말농장</a>
                        </li>
                        <li>
                            <a href="" class="top_main">숲치유</a>
                            <a href="" class="top_sub">산림테라피</a>
                            <a href="" class="top_sub">숲에서놀자</a>
                            <a href="" class="top_sub">숲에서 찾는 인문학</a>
                        </li>
                        <li>
                            <a href="" class="top_main">학교 환경교육 </a>
                            <a href="" class="top_sub">생태감수성</a>
                            <a href="" class="top_sub">탄소중립</a>
                            <a href=""class="top_sub">전통숲놀이</a>
                        </li>
                        <li><a href="" class="top_main">지역생태 모니터링</a>
                            <a href="" class="top_sub">산천나들이 모니터링</a>
                            <a href="" class="top_sub">물속세상모니터링</a>
                        </li>
                    </ul>
                </div>
                <div class="hidden_bar_3 hb"> 
                    <ul class="down_bar">
                        <div class="down_bar_logo1">
                            <div class="logo1_text">
                                <li href="" class="logo_text_main"><a href="">체험신청</a></li>
                                <li href="" class="logo_text_sub">
                                    <a href="">지구의 미래를 키우는 기업<br></a>
                                    <a href="">환경과 함께 성장해나가는 기업이 되겠습니다.</a>
                                </li>
                            </div>
                            <div class="logo_image"><img src="image/free-icon-document-88159.png"></div>       
                        </div>
                        <li><a href="" class="top_main">체험신청</a></li>
                        
                    </ul>
                </div>
                <div class="hidden_bar_4 hb"> 
                    <ul class="down_bar">
                        <div class="down_bar_logo1">
                            <div class="logo1_text">
                                <li href="" class="logo_text_main"><a href="">커뮤니티</a></li>
                                <li href="" class="logo_text_sub">
                                    <a href="">지구의 미래를 키우는 기업<br></a>
                                    <a href="">환경과 함께 성장해나가는 기업이 되겠습니다.</a>
                                </li>
                            </div>
                            <div class="logo_image"><img src="image/free-icon-faq-2408089.png"></div>
                        </div>
                        <li><a href="" class="top_main">공지사항</a></li>
                        <li><a href="" class="top_main">자료실</a></li>
                        <li><a href="" class="top_main">갤러리</a></li>
                        <li>
                            <a href="" class="top_main">함께도서추천</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="menu_logos">
                <div class="mobbile_logo"><img src="image/logo_font.png"></div> 
                
                <div class="mobile_hame"><a class="menu-trigger" href="#">
                    <img src="image/iconmonstr-menu-thin-240.png" >
                </a></div>
                
            </div>
            
        </header>
        <section class="section_real" style="height: 1600px;">
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
                    <!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">커뮤니티</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                    <a href="notice.html" class="active">- 공지사항</a>
                                 
                                </li>
                                <li class="depth1">
                                    <a href="files.html" class="">- 자료실</a>
                                    
                                </li>
                                <!-- <li class="depth1">
                                    <a href="" class="">- 소통방</a>
                                    
                                </li> -->
                                <li class="depth1">
                                    <a href="gallery.html" class="">- 갤러리</a>
                                    
                                </li>
                                <!-- <li class="depth1">
                                    <a href="book.html" class="">- 함께도서추천</a>
                                    
                                </li> -->
                                
                            </ul>
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3>공지사항</h3></div>
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
                                공지사항
                                <!-- <span class="sound_only"> 목록</span> -->
                            </h2>
                            <!-- bo = board -->
                            <div class="bo_list">
                                <div class="bo_fx">
                                    <div class="bo_list_total">
                                        <span>Total 315건 / 1페이지</span>
                                    </div>
                                    <ul class="btn_bo_user">
                                        <li><a href="javascript:goCommunity('notice_write')" class="btn1">글쓰기</a></li>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                    <table>
                                        <caption>목록</caption>
                                        <thead></thead>
                                        <colgroup>
                                            <col style="width:50;">
                                            <col style="width:600;">
                                            <col style="width:80;">
                                            <col style="width:80;">
                                            <col style="width:80;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="col">번호</th>
                                                <th scope="col">제목</th>
                                                <th scope="col">글쓴이</th>
                                                <th scope="col">
                                                    <a href="">조회수</a>
                                                </th>
                                                <th scope="col">
                                                    <a href="">날짜</a>
                                                </th>
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
                                                <td>hit</td>
                                                <td class="td_date">..</td>
                                               
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
                                                <td>hit</td>
                                                <td class="td_date">..</td>
                                               
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
                                                <td>hit</td>
                                                <td class="td_date">..</td>
                                               
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
                                                <td>hit</td>
                                                <td class="td_date">..</td>
                                                
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
                                                <td>hit</td>
                                                <td class="td_date">..</td>
                                               
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

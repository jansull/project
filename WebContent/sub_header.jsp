<%@ page pageEncoding="UTF-8"%>
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
                        <a href="javascript:goIndex()"><img src="image/logo_font.png"></a>
                    </div>
                <div class="menu_middle_index"> </div>
                    <div class="menu_bar">
                        <ul class="first_menu">
                            <li class="menu_1"><a href="javascript:goCompany('company_introduce')">회사소개</a></li>
                            <li class="menu_2"><a href="javascript:goProgram('agecny')">사업분야</a></li>
                            <li class="menu_3"><a href="javascript:goApply('apply')">체험신청</a></li>
                            <li class="menu_4"><a href="javascript:goCommunity('notice')">커뮤니티</a></li>
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
                            <li>
                                <a href="" class="top_main">체험신청</a>
                            </li>
                            <li>
                            <a href="" class="top_main">로컬 먹거리 직구</a>
                            </li>
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
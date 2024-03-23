<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/cssfile.css" rel="stylesheet">
    <script src="js/header.js"></script>
    <script type="text/javascript">
   
    
    </script>
</head>
<body>
<form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>
    <%@ include file="Hambuger.jsp"%> 
    <div class="all">
        
        <header>
            
            <!-- header grid 정리 -->
            <div class="header_container">
                <!-- 로그인, 회원가입 -->
                <div class="top_left_index" style="line-height: 0;"> </div>
                <div class="top_menu" style="line-height: 0;">
                </div>
                <div class="top_right_index" style="line-height: 1.2;">
                		<c:if test="${empty sessionLevel}">
                		<a href="javascript:goAdmin('login')">로그인</a>
                		</c:if>
                		
                		<c:if test="${sessionLevel eq 'top' }">
                		<a href="javascript:goPageMember('myinfo')">내정보</a>
                		<a href="javascript:goAdmin('logout')">Logout</a>
                		</c:if>
                		
                 </div>
                
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
                            <a href="" class="top_sub">농임업 임산물</a>
                            <a href="" class="top_sub">산림 에코힐링</a>
                            <a href="" class="top_sub">주말농장</a>
                        </li>
                        <li>
                            <a href="" class="top_main">숲치유</a>
                            <a href="" class="top_sub">산림테라피</a>
                            <a href="" class="top_sub">숲놀이파밍</a>
                            <a href="" class="top_sub">숲과인문학</a>
                            
                        </li>
                        <li>
                            <a href="" class="top_main">학교 환경교육 </a>
                            <a href="" class="top_sub">생태감수성</a>
                            <a href="" class="top_sub">탄소중립</a>
                            <a href=""class="top_sub">숲가치전통</a>
                        </li>
                        <li><a href="" class="top_main">지역생태 모니터링</a>
                            <a href="" class="top_sub">산천나들이 </a>
                            <a href="" class="top_sub">물속세상</a>
                        </li>
                        <li><a href="" class="top_main">로컬 먹거리 직구</a>
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
                <div class="mobbile_logo">
                    <a href="javascript:goIndex()"><img src="image/logo_font.png"></a>
                </div> 
                
                <div class="mobile_hame"><a class="menu-trigger" href="#">
                    <img src="image/iconmonstr-menu-thin-240.png" >
                </a></div>
                
            </div>
            
        </header>

        <!-- 상단 사진 -->
       <div class="slideshow-container">
            <div class="bnanner fade active"><img src="image/main.png" ></div>
            <div class="bnanner fade"><img src="image/_forest, logo, earth (planet), tree, s-1945669247.png" ></div>
            <div class="bnanner fade"><img src="image/main_fos.png" ></div>
            <div class="middle_img_text">
                <h2>주식회사 숲인들 <br>생태환경 두드림</h2>
            </div>
<!--             <a class="prev" onclick="prevSlide()">&#10094;</a> -->
<!--             <a class="next" onclick="nextSlide()">&#10095;</a> -->
    
            <div class="middle_index"> </div>
        </div>
        

        <!-- 중간 컨텐츠 -->
        <section>
            <div class="middle_list">
                <div class="middle_content">
                    <h2><a href="" class="program">공지사항</a> | <a href="" class="book">도서추천</a> | <a href="" class="files">자료실</a></h2>
                    <div class="content_div"  id="middle_content_1">
                       <div>
                        <ul>
                            <li style="height: 150px; border-bottom: solid black 1px;">
                                <a href="">
                                <h3 style="font-size: 25px;">제목</h3>
                                <p style="float: left; width: 80%;">
                                    2024.01.04
                                    업데이트
                                    네이버웍스 비정기 업데이트 소식
                                </p>
                                <p style="float: right;">2024-02-05</p>
                                
                                </a>
                            </li>
                            <li style="height: 150px; border-bottom: solid black 1px;">
                                <a href="">
                                <h3 style="font-size: 25px;">제목</h3>
                                <p style="float: left; width: 80%;">
                                    2024.01.04
                                    업데이트
                                    네이버웍스 비정기 업데이트 소식
                                </p>
                                <p style="float: right;">2024-02-05</p>
                                
                                </a>
                            </li>
                            <li style="height: 150px;">
                                <a href="">
                                <h3 style="font-size: 25px;">제목</h3>
                                <p style="float: left; width: 80%;">
                                    2024.01.04
                                    업데이트
                                    네이버웍스 비정기 업데이트 소식
                                </p>
                                <p style="float: right;">2024-02-05</p>
                                
                                </a>
                            </li>
                        </ul>
                        </div>
                        <div class="tap_group" id="tapGroup_1"><img src="image/kid.jpeg" alt="">유아숲 관련</div>
                        <div class="tap_group" id="tapGroup_2">자원순환 관련</div>
                        <div class="tap_group" id="tapGroup_3">생태감수성 관련</div>
                    </div> 
                    <div class="content_div" id="middle_content_2">
                        <div class="book_width">
                            <a href=""  ><img src="4_community/image/9788983927743.jpg" alt=""></a>
                            <a href=""  ><img src="4_community/image/cpgja.png" alt=""></a>
                            <a href=""  class="book_3"><img src="4_community/image/루리.webp" alt=""></a>
                            <a href=""  class="book_4"><img src="4_community/image/XL.jpg" alt=""></a>
                        </div>
                        <div class="book_p">
                            <ul>
                                <li ><a href="">게토스구루</a></li>
                                <li><a href="">고죠 사토루</a></li>
                                <li><a href="" class="book_1">료멘 스쿠나</a></li>
                                <li><a href="" class="book_2">토우지 후시구로</a></li>

                            </ul>
                    
                        </div>
                    </div> 
                    <div class="content_div" id="middle_content_3">
                        <div class="middle_notice">
                            
                        </div>
                    </div>  
                </div>
                
                <div class="middle_gallery">
                    <h2>갤러리</h2>
                    <img src="4_community/Gallery_image/${GalleryImg}" alt="">
                </div>
                
            </div>
            <div class="middle_program">
                    <h2>프로그램 소개</h2>
                <div class="program_container">
                    <ul class="clerfix">
                        <li> 
                            <a href="javascript:goProgram('local')">
                            <p>
                                <img src="index_image/로컬먹거리직구.jpg" alt="">
                            </p>
                            <div>
                                <h3>로컬먹거리직구</h3>
                                <p></p>
                            </div>
                        </a></li>
                        <li>
                            <a href="javascript:goProgram('agecny')">
                                <p>
                                    <img src="index_image/기관숲체험.jpg" alt="">
                                </p>
                                <div>
                                    <h3>기관 숲체험 프로그램</h3>
                                    <p></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goProgram('green')">
                                <p>
                                    <img src="index_image/녹색사업.jpg" alt="">
                                </p>
                                <div>
                                    <h3>녹색사업</h3>
                                    <p></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goProgram('forest_heal')">
                                <p>
                                    <img src="index_image/숲치유.jpg" alt="">
                                </p>
                                <div>
                                    <h3>숲치유</h3>
                                    <p></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goProgram('school')">
                                <p>
                                    <img src="index_image/학교환경교육.jpg" alt="">
                                </p>
                                <div>
                                    <h3>학교환경교육</h3>
                                    <p></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goProgram('monitar')">
                                <p>
                                    <img src="index_image/지역생태모니터링.jpg" alt="">
                                </p>
                                <div>
                                    <h3>지역생태모니터링</h3>
                                    <p></p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="middle_guide_section">
                    
                    <div class="g_section2">
                        <a href="javascript:goCompany('company_introduce')"><img src="simple-icon/compnay.png"><p>회사소개</p></a>
                            
                        </div>
                    <div class="g_section3">
                        <a href="javascript:goProgram('agecny')"> <img src="simple-icon/program.png"><p>프로그램안내</p></a>
                            </div>
                    <div class="g_section4">
                        <a href="javascript:goApply('apply')"> <img src="simple-icon/write.png"><p>체험신청</p></a>
                            </div>
                    <div class="g_section5">
                        <a href="javascript:goCommunity('notice')"> <img src="simple-icon/qna.png"><p>공지사항</p></a>
                            
                        </div>
                    
            </div>
        </section>
        <%@ include file="footer.jsp"%> 
    </div>
</body>
</html>

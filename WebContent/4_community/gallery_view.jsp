<%@page import="common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <script src="summernote-ko-KR.js"></script>
    <script src="js/header.js"></script>

    <link href="css/reserve.css" rel="stylesheet">
    
    
</head>
<body>
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
            <h2>공지사항</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">공지사항</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    
                    <!-- 우측 메인컨텐츠 -->
                    <section id="right_wp">
                        <div style="width: 100%; border-bottom: solid black 1px; height: 50px;">
                            <img src="image/iconmonstr-angel-left-thin-240.png" alt="" style="width: 10px;">
                            <a href="">이전글</a>
                            <a href="">다음글</a>
                            <img src="image/iconmonstr-angel-right-thin-240.png" alt="" style="width: 10px;">
                            <a href="" style="float: right; color: #063;">목록으로</a>


                        </div>
                       
                        <div class="sub_info">
                            <div class="sub_title">
                                <h1 style="text-align: center;">${dto.getTitle()}</h1>
                            </div>
                            <div class="sub_title" style="text-align: center; padding-top: 0px;">
                                <span>작성자</span>
                                <strong>${dto.getReg_id()}</strong>&nbsp;&nbsp;
                                <span>조회수</span>
                                <strong>${dto.getHit()}</strong>&nbsp;&nbsp;
                                <span>날짜</span>
                                <strong>${dto.getReg_date()}</strong>
                            </div>
                            </div>
                        <div id="contents">
                           	<img alt="" src="4_community/Notice_image/${dto.getAttach_1()}">
                           	<c:if test="${not empty dto.getAttach_2()} ">${dto.getAttach_2()}</c:if>
                           	<c:if test="${not empty dto.getAttach_3()} ">${dto.getAttach_3()}</c:if>
                           	<c:if test="${not empty dto.getAttach_4()} ">${dto.getAttach_4()}</c:if>
                           	<c:if test="${not empty dto.getAttach_5()} ">${dto.getAttach_5()}</c:if>
                            ${dto.getContent()}

                           </div>
                           <table style="border:1px solid #CCC;width:100%;margin-bottom:50px;">
                                <tr>
                                    
                                    <th>
                                    <h3 style="text-align: left;">첨부파일</h3>
                                    <a href="GalleryFileDownLoad?t_fileDir=filess&t_file=${dto.getAttach_1()}" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">
                                    ${dto.getAttach_1()}</a>
                                    <br>
                                    <c:if test="${ dto.getAttach_2() ne 'null'}"><a href="GalleryFileDownLoad?t_fileDir=filess&t_file=${dto.getAttach_2()}" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">
                                    ${dto.getAttach_2()}</a>
                                    <br>
                                    </c:if>
                                    <c:if test="${ dto.getAttach_3() ne 'null'}"><a href="GalleryFileDownLoad?t_fileDir=filess&t_file=${dto.getAttach_3()}" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">
                                    ${dto.getAttach_3()}</a>
                                    <br>
                                    </c:if>
                                    <c:if test="${dto.getAttach_4() ne 'null'}"><a href="GalleryFileDownLoad?t_fileDir=filess&t_file=${dto.getAttach_4()}" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">
                                    ${dto.getAttach_4()}</a>
                                    <br>
                                    </c:if>
                                    <c:if test="${dto.getAttach_5() ne 'null'}"><a href="GalleryFileDownLoad?t_fileDir=filess&t_file=${dto.getAttach_5()}" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">
                                    ${dto.getAttach_5()}</a>
                                    </c:if>
                                    </th>
                                     

                                    
                                </tr>
                            </table>
                           
                           
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
        
        
        <!-- 하단바
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
        </footer> -->
    </div>
</body>
</html>

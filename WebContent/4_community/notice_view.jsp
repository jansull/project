<%@page import="common.CommonUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <script src="summernote-ko-KR.js"></script>
    <script src="js/header.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
    <!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <link href="css/reserve.css" rel="stylesheet">
    <script>
        $(document).ready(function() {
    $('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          , toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
                ['insert',['picture','link','video']],
			    ['view', ['fullscreen', 'help']]
			  ],
			fontNames: ['맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
          
	});
    });
    $(document).ready(function() {
     $('#summernote').summernote();
    });
    
    </script>
    
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
                    <!-- 좌측 사이드바 -->
                    <!-- <section id="side" class="side">
                        <h2><span class="side_subject">체험신청</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                    <a href="javascript:;" class="active">- 체험신청</a>
                                 
                                </li>
                                <li class="depth1">
                                    <a href="javascript:;" class="">- 로컬먹거리직구</a>
                                    
                                </li>
                                
                            </ul>
                        </nav>
                    </section> -->
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
                                <h1 style="text-align: center;">숲체험 신청을 하시는 분들에게 미리 알려드리는 공지사항</h1>
                            </div>
                            <div class="sub_title" style="text-align: center; padding-top: 0px;">
                                <span>작성자</span>
                                <strong>관리자</strong>&nbsp;&nbsp;
                                <span>조회수</span>
                                <strong>123</strong>&nbsp;&nbsp;
                                <span>날짜</span>
                                <strong>2019-03-12</strong>
                            </div>
                            </div>
                        <div id="contents">
                           	<img alt="" src="4_community/picture/루리.webp">
                            

                           </div>
                           <table style="border:1px solid #CCC;width:100%;margin-bottom:50px;">
                                <tr>
                                    
                                    <th><h3 style="text-align: left;">첨부파일</h3><a href="" style="float: left; color: rgb(65, 168, 219); text-decoration: underline;">공지사항 파일</a></th>
                                     

                                    
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

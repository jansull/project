<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/Admin.css" rel="stylesheet">
    <script src="js/header.js"></script>
    <script type="text/javascript">
	    function goPw(){
			mem.t_pw.focus();
		}
	    function memberLogin(){
			
			if(mem.t_pw_check.value==""){
				alert("비밀번호 를 입력하세요")
				mem.t_pw_check.focus();
				return;
			}
			mem.t_gubun.value="password_check_go";
			mem.method="post";
			mem.action="Apply";
			mem.submit();
		}
	    
    </script>
</head>
<body>
<form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>    
    <%@ include file="../Hambuger.jsp"%> 
    <div class="all">
        
        <%@ include file="../sub_header.jsp" %>
        <section class="section_real">
        <div class="middle_img">
            <img src="image/13cli-trees-01-wpgf-videoSixteenByNine3000.jpg" >
        </div>
        <!-- <div class="titleBox"><span>사업분야</span></div> -->
        <div class="middle_img_text">
            <h2>로그인</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="../index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">로그인</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                      <!-- 우측 메인컨텐츠 -->
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">로그인</h3></div>
                        </div>
                        <div id="contents">
                         
							
								<div class="login">
									<div class="member_boxL">
										<h2>비밀번호 확인</h2>
										<div class="login_form">
											<form name="mem">
												<input type="hidden" name="t_gubun" >
												<div class="fl_clear"><label for="mbrId">글번호</label><input name="t_id" id="mbrId"  autofocus type="text"  value="${a_no}" readonly onkeypress="if( event.keyCode==13 ){goPw()}"></div>
												<div class="fl_clear"><label for="scrtNo">비밀번호</label><input name="t_pw_check" id="scrtNo" type="password" onkeypress="if( event.keyCode==13 ){memberLogin()}"></div>
												<a class="btn_login btn_Blue" href="javascript:memberLogin()">로그인</a>
											</form>
										</div>
									   
									</div>		
								</div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
		


        <%@include file="../guide_bar.jsp" %>
    </section>
        
    </div>









			
</body>
</html>
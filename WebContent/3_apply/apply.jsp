<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/apply.css" rel="stylesheet">
    <script src="js/header.js"></script>
    <script>
    function goPasswordCheck(no) {
    	pageMove.t_gubun.value="password_check";
    	pageMove.a_no.value = no;
    	pageMove.method = "post";
    	pageMove.action = "Apply";
    	pageMove.submit();
    }
    function goSearch(){
		noti.method="post";
		noti.action="Apply";
		noti.submit();
	}
	function goPage(pageNumber){
		noti.t_nowPage.value=pageNumber;
		noti.method="post";
		noti.action="Apply";
		noti.submit();
	}
	function goAdminView(no){
		pageMove.t_gubun.value="Admin_view";
    	pageMove.nos.value = no;
    	pageMove.method = "post";
    	pageMove.action = "Apply";
    	pageMove.submit();
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
                                    <a href="javascript:goApply('apply');" class="active">- 체험신청</a>
                                 
                                </li>
                                
                                
                            </ul>
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">체험신청</h3></div>
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
                            <!--페이지 검색기능  -->
                            <form name="noti">
                            	<input type="hidden" name="t_nowPage">
                            <p class="select_box select_box_right">
								<select name="t_select" class="sel_box">
									<option value="title" <c:if test="${select eq 'title'}">selected</c:if>>제목</option>
									<option value="write_name" <c:if test="${select eq 'write_name'}">selected</c:if>>이름</option>
								</select>
								<input type="text" value="${search}" name="t_search"  class="sel_text">
								<button type="button" onclick="goSearch()" class="sel_button"><i class="fa fa-search"></i>SEARCH</button>
							</p>
							</form>	
                            <h2 class="contents_title">
                               		 체험신청
                                <!-- <span class="sound_only"> 목록</span> -->
                            </h2>
                            <!-- bo = board -->
                            <div class="bo_list">
                                <div class="bo_fx">
                                    <div class="bo_list_total">
                                        <span>Total ${total_Count}건 / 1페이지</span>
                                    </div>
                                    <ul class="btn_bo_user">
                                        <li><a href="javascript:goApply('reserve_user')" class="btn1">글쓰기</a></li>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                <form name="pageMove">
                                <input type="hidden" name="a_no">
                                <input type="hidden" name="nos">
                                <input type="hidden" name="t_gubun">
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
										    <c:forEach items="${dtos}" var="dto">
										        <c:if test="${dto.getHeader_check() ne '5'}">
										            <tr>
										                <td class="td_num">${dto.getNo()}</td>
										                <td class="td_subject">
										                	<c:if test="${sessionLevel ne 'top' }">
										                    <a href="javascript:goPasswordCheck(${dto.getNo()})">${dto.getTitle()}</a>
										                    </c:if>
										                    <c:if test="${sessionLevel eq 'top' }">
										                    <a href="javascript:goAdminView(${dto.getNo()})">${dto.getTitle()}</a>
										                    </c:if>
										                </td>
										                <td class="center">
										                    <span>${dto.getWrite_name()}</span>
										                </td>
										                <td class="td_date">${dto.getApply_date()}</td>
										                <td class="td_num">
										                    <c:if test="${dto.getReserve_check() eq 'n' }">
										                        <a href="" class="btn2">예약대기</a>
										                    </c:if>
										                    <c:if test="${dto.getReserve_check() eq 'y' }">
										                        <a href="" class="btn1">예약완료</a>
										                    </c:if>
										                </td>
										            </tr>
										        </c:if>
										    </c:forEach>
										</tbody>
                                       
    								
                                        
                                    </table>
</form>
                                    <div class="bo_fx">
                                        <ul class="btn_bo_user">
                                            <li><a href="" class="btn1">글쓰기</a></li>
                                        </ul>
                                    </div>
									<div class="paging">
										${displayPage}
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
        
         <%@ include file="../footer.jsp"%> 
    </div>
</body>
</html>

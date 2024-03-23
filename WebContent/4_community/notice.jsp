<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/apply.css" rel="stylesheet">
   	<script src="js/header.js"></script>
   	<script>
   		function goNoticeView(no){
   			notice_move.notice_no.value=no;
   			notice_move.t_gubun.value="notice_view";
   			notice_move.method="post";
   			notice_move.action="Community";
   			notice_move.submit();
   		}
   		function goSearch(){
   			noti.method="post";
   			noti.action="Community";
   			noti.submit();
   		}
   		function goPage(pageNumber){
   			noti.t_nowPage.value=pageNumber;
   			noti.method="post";
   			noti.action="Community";
   			noti.submit();
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
                    <%@include file="community_sidebar.jsp" %>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family: 'KimjungchulMyungjo-Bold';">공지사항</h3></div>
                        </div>
                        <div id="contents">
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
                                		공지사항
                                <!-- <span class="sound_only"> 목록</span> -->
                            </h2>
                            <!-- bo = board -->
                            <div class="bo_list">
                                <div class="bo_fx">
                                    <div class="bo_list_total">
                                        <span>Total ${total_Count}건 / 1페이지</span>
                                    </div>
                                    <ul class="btn_bo_user">
                                    <c:if test="${sessionLevel eq 'top' }">
                                        <li><a href="javascript:goCommunity('notice_write')" class="btn1">글쓰기</a></li>
                                    </c:if>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                <form name="notice_move">
                                <input type ="hidden" name="t_gubun">
                                <input type ="hidden" name="notice_no">
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
    									<c:forEach items="${dtos}" var="dto">
                                        <tbody>
                                            <tr class="apply_notice">
                                                <td class="td_num">${dto.getNo()}</td>
                                                <td class="td_subject">
                                                    <a href="javascript:goNoticeView('${dto.getNo()}')">${dto.getTitle()}</a>
                                                </td>
                                                <td class="center">
                                                    <span>${dto.getAdmin()}</span>
                                                </td>
                                                <td>${dto.getHit()}</td>
                                                <td class="td_date">${dto.getReg_date()}</td>
                                               
                                            </tr>
                                        </tbody>
											</c:forEach>
                                    </table>
								</form>
                                    <div class="bo_fx">
                                        <ul class="btn_bo_user">
                                        	<c:if test="${sessionLevel eq 'top' }">
                                            <li><a href="javascript:goCommunity('notice_write')" class="btn1">글쓰기</a></li>
                                            </c:if>
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
        
        <%@ include file="../footer.jsp"%> 
    </div>
</body>
</html>

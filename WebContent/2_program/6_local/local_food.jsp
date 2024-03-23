<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <link href="css/gallery.css" rel="stylesheet">
    <script src="js/header.js"></script>
    <script>
   		function goLcoalView(no){
   			local_move.Local_no.value=no;
   			local_move.t_gubun.value="local_view";
   			local_move.method="post";
   			local_move.action="LocalFood";
   			local_move.submit();
   		}
   		function goSearch(){
   			noti.method="post";
   			noti.action="LocalFood";
   			noti.submit();
   		}
   		function goPage(pageNumber){
   			noti.t_nowPage.value=pageNumber;
   			noti.method="post";
   			noti.action="LocalFood";
   			noti.submit();
   		}
   	
   	</script>
</head>
<body>
    <form name="pagemove">
	<input type="hidden" name="t_gubun">
</form>   
    <%@ include file="../../Hambuger.jsp"%> 
    <div class="all">
        
        <%@ include file="../../sub_header.jsp" %>
        <div class="middle_img">
            <img src="image/13cli-trees-01-wpgf-videoSixteenByNine3000.jpg" >
        </div>
        <!-- <div class="titleBox"><span>사업분야</span></div> -->
        <div class="middle_img_text">
            <h2>사업분야</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">로컬 먹거리</a></li>
                </ol>
            </div>
            <div id="sub_wrap">
                <div class="wrap">
                    <%@include file="../program_side.jsp" %>
                    <section id="right_wp">
                        <div class="sub_info">
                            <div class="sub_title"><h3>로컬먹거리</h3></div>
                        </div>
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
                        <div id="contents">
                            
                            <h2 class="contents_title">
                               			 로컬먹거리
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
                                        <li><a href="javascript:goLocalFood('local_save_form')" class="btn1">글쓰기</a></li>
                                        </c:if>
                                    </ul>
                                </div>

                                <div class="tb1_wrap">
                                <form name="local_move">
                                <input type ="hidden" name="t_gubun">
                                <input type ="hidden" name="Local_no">
                                    <table >
                                        <ul>
                                        	<c:forEach items="${dtos}" var="dto">
                                            <li>
                                                <a href="javascript:goLcoalView('${dto.getNo()}')">
                                                    <p>
                                                        <img src="2_program/6_local/local_image/${dto.getAttach()}" style="width: 344px;
    														height: 344px; object-fit: cover;">
                                                    </p>
                                                    <div>
                                                        <h3></h3>
                                                         <p>${dto.getTitle()}</p>
                                                         <p style="text-align: left; float: left;">${dto.getHit()}</p>
                                                         <p style="text-align: right;">${dto.getReg_date()}</p>
                                                    </div>
                                                </a>
                                            </li>
                                            </c:forEach>
                                           
                                        </ul>
                                        
                                        
                                    </table>
                                    </form>
                                </div>
                                <div class="bo_fx">
                                        <ul class="btn_bo_user">
                                        <c:if test="${sessionLevel eq 'top' }">
                                            <li><a href="" class="btn1">글쓰기</a></li>
                                            </c:if>
                                        </ul>
                                    </div>
									<div class="paging">
										${displayPage}
									</div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../../guide_bar.jsp" %>

        <%//@ include file="../footer.jsp"%> <!-- 수정 해야함;;(section 크기 조절) -->
        
    </div>
</body>
</html>

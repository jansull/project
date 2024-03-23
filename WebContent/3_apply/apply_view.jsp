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
    function goDelete(){
    	if(confirm("정말 삭제 하겠습니까?")){
    		mem.t_gubun.value="apply_delete";
        	mem.method = "post";
        	mem.action = "Apply";
        	mem.submit();
    	}
    	
    	
    }
    function goUpdate(){
    		mem.t_gubun.value="apply_update_form";
        	mem.method = "post";
        	mem.action = "Apply";
        	mem.submit();
    }
    function ReservationYes(check){
    	if(confirm("예약 확인으로 바꾸시겠습니까?")){
    		mem.check_value.value=check;
    		mem.t_gubun.value="ReservationCheck";
        	mem.method = "post";
        	mem.action = "Apply";
        	mem.submit();
    		
    	}
    }
    function ReservationNo(check){
    	if(confirm("예약 대기로 바꾸시겠습니까?")){
    		mem.check_value.value=check;
    		mem.t_gubun.value="ReservationCheck";
        	mem.method = "post";
        	mem.action = "Apply";
        	mem.submit();
    		
    	}
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
                                    <a href="javascript:;" class="active">- 체험신청</a>
                                 
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
                           	
                	<div id="b_right">
						<p class="n_title" >
							신청 정보
						</p>
						<form name="mem">
						<input type="hidden"name="t_gubun">
						<input type="hidden"name="check_value">
						<input type="hidden"name="nos" value="${dto.getNo()}">
						<input type="hidden"name="header_check" value="${dto.getHeader_check()}">
						<input type="hidden"name="password" value="${dto.getPassword()}">
						<input type="hidden"name="title" value="${dto.getTitle()}">
						<input type="hidden"name="program_index" value="${dto.getProgram_index()}">
						<input type="hidden"name="program_name" value="${dto.getProgram_name()}">
						<input type="hidden"name="apply_date" value="${dto.getApply_date()}">
						<input type="hidden"name="kid_count" value="${dto.getKid_count()}">
						<input type="hidden"name="teen_kid_count" value="${dto.getTeen_kid_count()}">
						<input type="hidden"name="elementary_count" value="${dto.getElementary_count()}">
						<input type="hidden"name="adult_count" value="${dto.getAdult_count()}">
						<input type="hidden"name="write_name" value="${dto.getWrite_name()}">
						<input type="hidden"name="agency_name" value="${dto.getAgency_name()}">
						<input type="hidden"name="tell_1" value="${dto.getTell_1()}">
						<input type="hidden"name="tell_2" value="${dto.getTell_2()}">
						<input type="hidden"name="tell_3" value="${dto.getTell_3()}">
						<input type="hidden"name="email" value="${dto.getEmail()}">
						<input type="hidden"name="reserve_check" value="${dto.getReserve_check()}">
						
						<table class="boardForm">
						  <colgroup>
							<col width="200" />
							<col width="500" />
						  </colgroup>
						  <tbody>
							<tr>
							  <th><label for="id">제목</label></th>
							  <td>
								${dto.getTitle()}
							  </td>
							</tr>
							<tr>
							  <th><label for="nana">프로그램 정보</label></th>
							   <td>
							   <c:choose>
							   <c:when test="${dto.getProgram_index() eq 'a'}">
							   	기관 숲체험 프로그램
							   </c:when>
							   <c:when test="${dto.getProgram_index() eq 'b'}">
							   	녹색사업
							   </c:when>
							   <c:when test="${dto.getProgram_index() eq 'c'}">
							   	숲치유
							   </c:when>
							   <c:when test="${dto.getProgram_index() eq 'd'}">
							   	학교환경교육
							   </c:when>
							   <c:when test="${dto.getProgram_index() eq 'e'}">
							   	지역생태모니터링
							   </c:when>
							   </c:choose>
							    -${dto.getProgram_name()}
							  </td>
							</tr>
							<tr>
							  <th>신청일</th>
							  <td>
							  ${dto.getApply_date()}
							  </td>
							</tr>
							
							<tr>
							  <th>신청인 수</th>
							  <td>
									<c:if test="${not empty dto.getKid_count() }">영유아&nbsp;${dto.getKid_count()}명</c:if>
									<c:if test="${not empty dto.getTeen_kid_count() }">청소년&nbsp;${dto.getTeen_kid_count()}명</c:if>
									<c:if test="${not empty dto.getElementary_count() }">초등&nbsp;${dto.getElementary_count()}명</c:if>
									<c:if test="${not empty dto.getAdult_count() }">성인&nbsp;${dto.getAdult_count()}명</c:if>
							  </td>
							</tr>	
							
							<tr>
							  <th>신청인 이름</th>
							  <td>${dto.getWrite_name()}</td>
							</tr>
							<tr>
							  <th>단체 이름</th>
							  <td>${dto.getAgency_name()}</td>
							</tr>
							<tr>
							  <th>연락처</th>
							  <td>
								${dto.getTell_1()} -
								${dto.getTell_2()} -
								${dto.getTell_3()}
							  </td>
							</tr>
							<tr>
							  <th>이메일</th>
							  <td>
								  ${dto.getEmail()}
							  </td>
							</tr>
							<tr>
							  <th>예약상태</th>
							  <td class="td_num">
			                    <c:if test="${dto.getReserve_check() eq 'n' }">
			                        <a href="" class="btn2">예약대기</a>
			                    </c:if>
			                    <c:if test="${dto.getReserve_check() eq 'y' }">
			                        <a href="" class="btn1">예약완료</a>
			                    </c:if>
			                </td>
							</tr>
							<tr>
							<th>회웝가입일</th>
								<td>123</td>
							</tr>
							<tr>
							<th>최정정보수정일</th>
								<td>123</td>
							</tr>
						  </tbody>
						</table>
						</form>
						<div class="bo_fx">
                           <ul class="btn_bo_user">
                           	<c:if test="${sessionLevel eq 'top' }">
                           		 <c:if test="${dto.getReserve_check() eq 'n' }">
                           		<li><a href="javascript:ReservationYes('y')" class="btn1">예약확인으로 바꾸기</a></li>
                           		</c:if>
                           		<c:if test="${dto.getReserve_check() eq 'y' }">
                           		<li><a href="javascript:ReservationNo('n')" class="btn1">예약대기으로 바꾸기</a></li>
                           		</c:if>
                           	</c:if>
                               <li><a href="javascript:goUpdate('apply_update_form')" class="btn1">수정</a></li>
                               <li><a href="javascript:goDelete()" class="btn1">삭제</a></li>
                               <li><a href="javascript:goApply('apply')" class="btn1">목록으로</a></li>
                           </ul>
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

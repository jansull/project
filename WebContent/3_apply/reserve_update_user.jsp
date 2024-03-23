<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <script src="js/header.js"></script>
    <link href="css/reserve.css" rel="stylesheet">
    <script type="text/javascript">
    function goMemberReserve(){
    	reserve_member.t_gubun.value="reserve_check";
    	reserve_member.method="post";
    	reserve_member.action="Apply";
    	reserve_member.submit();
    	
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
                        <div class="sub_info">
                            <div class="sub_title"><h3 style="font-family:KimjungchulMyungjo-Bold;">체험신청</h3></div>
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
                                            <span style="color:#FC0;font-size:1.1em;">농협 301-19191-122345</span>
                                            <span style="font-size:1em;">주식회사 숲인들 생태환경두드림</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <h2 class="contents_title">
                                체험신청
                            </h2>
                            <div class="caution">
                                <div class="check_icon">V&nbsp</div>
                                비회원으로 신청서 작성중입니다. 성명과 휴대전화는 예약조회에 필요하니 정확하게 입력하세요.
                                <br>
                                <div class="check_icon">V&nbsp</div>
                                작성글 수정시 비밀번호가 필요합니다. 비밀번호란 작성시 유의해주세요.
                                <br>
                                <div class="check_icon">V&nbsp</div>
                                신청에 대해 문의가 필요하시면 010-7503-5370 연락주세요.
                            </div>
                            <!-- Step.0 글쓰기 -->
                         <form name="reserve_member">
                          <input type="hidden" name="t_gubun">
                            <div class="col">
                                <div class="wrap0">
                                    <h2>Step 0. <span>글쓰기</span></h2>
                                    <select name="header_check" id="selectBox">
                                        <option value=""  disabled hidden>말머리 선택</option> 
                                        <option value="2" <c:if test="${dto.getHeader_check() eq '2'}">selected</c:if>>신규 방문</option>
                                        <option value="3" <c:if test="${dto.getHeader_check() eq '3'}">selected</c:if>>재방문</option>
                                        <option value="4" <c:if test="${dto.getHeader_check() eq '4'}">selected</c:if>>기타</option>
                                    </select>
<!--                                     <input type="text" id="user_password" name="user_password" placeholder="비밀번호 입력"> -->
                                    <input type="text" id="user_title" name="user_title" value="${dto.getTitle()}" placeholder="제목을 입력해 주세요.">

                                </div>
                            </div>
                            <!-- Step.1 프로그램 정보 -->
                            <div class="col">
                                <div class="wrap1 wrap_common">
                                    <h2>&nbsp&nbspStep 1. <span>프로그램 정보</span></h2>
                                    <div class="item01">
                                        <div class="item1">
                                            <span>체험분류</span>
                                            <br>
                                            <select onchange="categoryChange(this)" name="program_index" id="classification_selectBox">
                                                <option value=""  disabled hidden>선택하세요</option> 
                                                <option value="a" <c:if test="${dto.getProgram_index() eq 'a'}">selected</c:if>>기관 숲체험 프로그램</option>
                                                <option value="b" <c:if test="${dto.getProgram_index() eq 'b'}">selected</c:if>>녹색사업</option>
                                                <option value="c" <c:if test="${dto.getProgram_index() eq 'c'}">selected</c:if>>숲치유</option>
                                                <option value="d" <c:if test="${dto.getProgram_index() eq 'd'}">selected</c:if>>학교환경교육</option>
                                                <option value="e" <c:if test="${dto.getProgram_index() eq 'e'}">selected</c:if>>지역생태모니터링</option>
                                            </select>
                                        </div>
                                        <div class="arrow">&#8594</div>
                                        <div class="item2">
                                            <span>프로그램명</span>
                                            <br>
                                            <select name="program_name" id="program_selectBox">
                                                <option value=""  disabled hidden>선택하세요</option>
                                                <option value="${dto.getProgram_name()}" selected disabled hidden>${dto.getProgram_name()}</option>
                                            </select>
                                        </div>
                                        <!-- <div class="item3">
                                            <span>교육장소</span>
                                            <br>
                                            <input type="text" id="user_title" placeholder="교육장소를 입력해주세요.">
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            <!-- Step.2 방문일자/인원 선택 -->
                            <div class="col">
                                <div class="wrap2 wrap_common">
                                    <h2>&nbsp&nbspStep 2. <span>방문일자/인원 선택</span></h2>
                                    <div class="item02">
                                        <div class="item1">
                                            <span>예약일시</span>
                                            <br>
                                            <input type="date" data-placeholder="등록일" name="apply_date" value="${dto.getApply_date()}">
                                            <!-- <select name="time_selectBox" id="time_selectBox">
                                                <option value="" selected disabled hidden>시간 선택</option>
                                                <option value="1">09:00</option>
                                                <option value="2">10:00</option>
                                                <option value="3">11:00</option>
                                                <option value="4">12:00</option>
                                                <option value="5">13:00</option>
                                                <option value="6">14:00</option>
                                            </select> -->
                                        </div>
                                        <!-- <div class="item2">
                                            <span>교육시간</span>
                                            <br>
                                            <select name="progressTime_selectBox" id="progressTime_selectBox">
                                                <option value="" selected disabled hidden>선택하세요.</option>
                                                <option value="1">1시간</option>
                                                <option value="2">2시간</option>
                                                <option value="3">3시간</option>
                                                <option value="4">4시간</option>
                                            </select>
                                        </div> -->
                                        <div class="item3">
                                            <span>인원 선택</span>
                                            <div class="item3_2">
                                                <span>영유아</span>
                                                <input type="text" name="kid_count" value="${dto.getKid_count() }">
                                                <h5>명</h5>
                                            </div>
                                            <div class="item3_1">
                                                <span>청소년</span>
                                                <input type="text" name="teen_kid_count" value="${dto.getTeen_kid_count() }">
                                                <h5>명</h5>
                                            </div>
                                            <div class="item3_1">
                                                <span>초등</span>
                                                <input type="text" name="elementary_count" value="${dto.getElementary_count() }">
                                                <h5>명</h5>
                                            </div>
                                            <div class="item3_1">
                                                <span>성인</span>
                                                <input type="text" name="adult_count" value="${dto.getAdult_count() }">
                                                <h5>명</h5>
                                            </div>
                                            <!-- <div class="item3_1">
                                                <span>고등</span>
                                                <input type="text">
                                                <h5>명</h5>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <h2>&nbsp&nbspStep 3. <span>신청단체·기관 정보</span></h2>
                               
                               
                                    <div class="tbl_frm01 tbl_wrap">
                                        <table>
                                            <tbody>
                                                <!-- 1번째 / 신청인 이름 -->
                                                <tr>
                                                    <th class="row">
                                                        <label for="wr_name">신청인 이름</label>
                                                    </th>
                                                    <td>
                                                        <input type="text" name="write_name" id="wr_1" required class="frm_input required" size="10" maxlength="20" placeholder="성명 입력" value="${dto.getWrite_name()}">
                                                    </td>
                                                </tr>
                                                <!-- 2번째 / 단체ㆍ기관명 -->
                                                <tr>
                                                    <th class="row">
                                                        <label for="wr_name">단체ㆍ기관명</label>
                                                    </th>
                                                    <td>
                                                        <input type="text" name="agency_name" id="wr_2" required class="frm_input required" size="10" maxlength="20" placeholder="단체·기관명 입력" value="${dto.getAgency_name()}">
                                                    </td>
                                                </tr>
                                                <!-- 3번째 / 전화번호 -->
                                                <tr>
                                                    <th class="row">
                                                        <label for="wr_name">전화번호</label>
                                                    </th>
                                                    <td>
                                                        <input type="text" name="tell_1" id="wr_3" required class="frm_input required" size="3" maxlength="3" placeholder="" style="width: 50px;" value="${dto.getTell_1()}">
                                                        <input type="text" name="tell_2" id="wr_3" required class="frm_input required" size="4" maxlength="4" placeholder="" style="width: 50px;" value="${dto.getTell_2()}">
                                                        <input type="text" name="tell_3" id="wr_3" required class="frm_input required" size="4" maxlength="4" placeholder="" style="width: 50px;" value="${dto.getTell_3()}">
                                                    </td>
                                                </tr>
                                                <!-- 4번째 / 이메일 -->
                                                <tr>
                                                    <th class="row">
                                                        <label for="wr_name">이메일</label>
                                                    </th>
                                                    <td>
                                                        <input type="text" name="email" id="wr_4" required class="frm_input required" size="10" maxlength="20" placeholder="이메일을 입력해주세요." value="${dto.getEmail()}">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                            <div class="col"></div>
                            <input type="button" onclick="goMemberReserve()" value="수정하기" class="custom-btn btn-1" style="float: right;">
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../guide_bar.jsp" %>
        
        
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

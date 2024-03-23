<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">사업분야</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'agency_forest'}">
                                	<a href="javascript:goProgram('agecny')" class="active">- 기관 숲체험 프로그램</a> <div class="depth1-image"></div>
                                	 <ul class="depth2"  style="display: block;">
                                        <li><a href="1_forest/forestcpgja.html">• 숲체험</a></li>
                                        <li><a href="1_forest/kid forest.html">• 유아숲 체험</a></li>
                                        <li><a href="1_forest/payforest.html">• 전연령 숲체험</a></li>
                                	</ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('agecny')" class="">- 기관 숲체험 프로그램</a> <div class="depth1-image"></div>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                   
                                
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'green_forest'}">
                                	<a href="javascript:goProgram('green')" class="active">- 녹색사업</a> <div class="depth1-image"></div>
                                	<ul class="depth2" style="display: block;">
                                        <li><a href="2_greenprogram/nongim.html">• 농임업 임산물</a></li>
                                        <li><a href="2_greenprogram/sanrim.html">• 산림 에코힐링</a></li>
                                        <li><a href="2_greenprogram/wekkendfram.html">• 주말농장</a></li>
                                    </ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('green')" class="">- 녹색사업</a> <div class="depth1-image"></div>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'forest_heal_forest'}">
                                	<a href="javascript:goProgram('forest_heal')" class="active">- 숲치유</a> <div class="depth1-image"></div>
                                	<ul class="depth2" style="display: block;">
                                        <li><a href="3_forestheall/sarimteraip.html">• 산림테라피</a></li>
                                        <li><a href="3_forestheall/forestframing.html">• 숲놀이파밍</a></li>
                                        <li><a href="3_forestheall/forestinmun.html">• 숲과인문학</a></li>
                                    </ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('forest_heal')" class="">- 숲치유</a> <div class="depth1-image"></div>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'school_forest'}">
                                	<a href="javascript:goProgram('school')" class="active">- 학교 환경교육</a> <div class="depth1-image"></div>
                                	<ul class="depth2" style="display: block;">
                                        <li><a href="4_scholl/1.html">• 생태감수성</a></li>
                                        <li><a href="4_scholl/2.html">• 탄소중립</a></li>
                                        <li><a href="4_scholl/3.html">• 숲가치전통</a></li>
                                    </ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('school')" class="">- 학교 환경교육</a> <div class="depth1-image"></div>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'monitar_forest'}">
                                	<a href="javascript:goProgram('monitar')" class="active">- 지역생태 모니터링</a> <div class="depth1-image"></div>
                                	<ul class="depth2" style="display: block;">
                                        <li><a href="5_monitarr/sancun.html">• 산천나들이</a></li>
                                        <li><a href="5_monitarr/water.html">• 물속세상</a></li>
                                    </ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('monitar')" class="">- 지역생태 모니터링</a> <div class="depth1-image"></div>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                    </li>
                                    <li class="depth1">
                                    <c:choose>
                                	<c:when test="${t_gubunMenu eq 'local_forest'}">
                                	<a href="javascript:goProgram('local')" class="active">- 로컬 먹거리 직구</a>
                                	<ul class="depth2" style="display: block;">
                                        <li><a href="javascript:goLocalFood('local_food_page')">• 로컬먹거리 상품</a></li>
                                    </ul>
                                	</c:when>
                                	<c:otherwise>
                                	<a href="javascript:goProgram('local')" class="">- 로컬 먹거리 직구</a> 
                                	</c:otherwise>
                                </c:choose>	
                                    </li> 
                               </ul> 
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
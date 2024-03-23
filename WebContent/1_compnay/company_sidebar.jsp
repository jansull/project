<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">회사소개</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'company_in'}">
                                		<a href="javascript:goCompany('company_introduce')" class="active">- 회사소개</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goCompany('company_introduce')" class="">- 회사소개</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'company_history'}">
                                		<a href="javascript:goCompany('history')" class="active">- 연혁</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goCompany('history')" class="">- 연혁</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'company_person'}">
                                		<a href="javascript:goCompany('preson')" class="active">- 조직도</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goCompany('preson')" class="">- 조직도</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                               
                            </ul>
                        </nav>
                      
                    </section>
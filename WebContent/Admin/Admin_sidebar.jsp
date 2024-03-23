<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">로그인</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'join_admin'}">
                                		<a href="javascript:goPageMember('join')" class="active">- 가입</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goPageMember('join')" class="">- 가입</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'password_admin'}">
                                		<a href="javascript:goPageMember('findpassword')" class="active">- 비밀번호 찾기</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goPageMember('findpassword')" class="">- 비밀번호 찾기</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                                <li class="depth1">
                                <c:choose>
                                	<c:when test="${t_gubunMenu eq 'myifno_admin'}">
                                		<a href="javascript:goPageMember('myinfo')" class="active">- 내정보</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="javascript:goPageMember('myinfo')" class="">- 내정보</a>
                                	</c:otherwise>
                                </c:choose>	
                                    
                                </li>
                               
                            </ul>
                        </nav>
                      
                    </section>
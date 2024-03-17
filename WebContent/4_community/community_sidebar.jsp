<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- 좌측 사이드바 -->
                    <section id="side" class="side">
                        <h2><span class="side_subject">커뮤니티</span></h2>
                        <nav class="lnb">
                            <ul>
                                <li class="depth1">
                                   <c:choose>
									    <c:when test="${t_gubunMenu eq 'notice'}">
									        <a href="javascript:goCommunity('notice')" class="active">- 공지사항</a>
									    </c:when>
									    <c:otherwise>
									        <a href="javascript:goCommunity('notice')" class="">- 공지사항</a>
									    </c:otherwise>
									</c:choose>
                                 
                                </li>
                                <li class="depth1">
                                <c:choose>
		                                <c:when test="${t_gubunMenu eq 'files'}">
		                                    <a href="javascript:goCommunity('files')" class="active">- 자료실</a>
		                                </c:when>
	                                    <c:otherwise>
	                                    	<a href="javascript:goCommunity('files')" class="">- 자료실</a>
	                                    </c:otherwise>
                                    </c:choose>
                                </li>
                                <!-- <li class="depth1">
                                    <a href="" class="">- 소통방</a>
                                    
                                </li> -->
                                <li class="depth1">
                                <c:choose>
	                                   <c:when test="${t_gubunMenu eq 'gallery'}">
	                                   		<a href="javascript:goCommunity('gallery')" class="active">- 갤러리</a>
	                                   </c:when>
	                                   <c:otherwise>
	                                   		<a href="javascript:goCommunity('gallery')" class="">- 갤러리</a>
	                                   </c:otherwise>
                                 </c:choose>
                                </li>
                                <!-- <li class="depth1">
                                    <a href="book.html" class="">- 함께도서추천</a>
                                    
                                </li> -->
                                
                            </ul>
                        </nav>
                        <!-- 우측 메인컨텐츠 -->
                    </section>
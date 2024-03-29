<%@page import="common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <script src="js/jquery-1.8.1.min.js"></script>
    <script src="jsfile.js"></script>
    <script src="summernote-ko-KR.js"></script>
    <script src="js/header.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <link href="css/notice_write.css" rel="stylesheet">
    <script>
    function NoticeSave(gubun){
    	var fileName = notice_write.img_attach.value;
		if(fileName != ""){ 
			var pathFileName = fileName.lastIndexOf(".")+1;    //확장자 제외한 경로+파일명
			var extension = (fileName.substr(pathFileName)).toLowerCase();	//확장자명
			//파일명.확장자
			if(extension != "jpeg" && extension != "gif" && extension != "png" && extension != "jpg"){
				alert(extension +" 형식 파일은 업로드 안됩니다. 이미지 파일만 가능!");
				return;
			}		
		}
		
		// 2.첨부 용량 체크	
		var file = notice_write.img_attach;
		var fileMaxSize  = 5; // 첨부 최대 용량 설정
		if(file.value !=""){
			// 사이즈체크
			var maxSize  = 1024 * 1024 * fileMaxSize;  
			var fileSize = 0;
			// 브라우저 확인
			var browser=navigator.appName;
			// 익스플로러일 경우
			if (browser=="Microsoft Internet Explorer"){
				var oas = new ActiveXObject("Scripting.FileSystemObject");
				fileSize = oas.getFile(file.value).size;
			}else {
			// 익스플로러가 아닐경우
				fileSize = file.files[0].size;
			}

			if(fileSize > maxSize){
				alert(" 첨부파일 사이즈는 "+fileMaxSize+"MB 이내로 등록 가능합니다. ");
				return;
			}
		
    	}
    	notice_write.method="post";
    	notice_write.action="Community?t_gubun=notice_save";
    	notice_write.submit();
   }
    </script>
    <script>
    $(document).ready(function() {
    $('#summernote').summernote({
		  height: 300,                                      // 에디터 높이
		  focus: true,                                      // 에디터 로딩후 포커스를 맞출지 여부
          lang: "ko-KR",					                // 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	  //placeholder 설정
          disableResizeEditor: true,
          
          toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
                ['insert',['link']],
			    ['view', ['fullscreen', 'help','codeview']]
			  ],
			fontNames: ['맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
                   


          
		});
    $(function(){					
		function readImage(input) {
		    // 인풋 태그에 파일이 있는 경우
		    if(input.files && input.files[0]) {
		        // 이미지 파일인지 검사 (생략)
		        // FileReader 인스턴스 생성
		        const reader = new FileReader()
		        // 이미지가 로드가 된 경우
		        reader.onload = e => {
		            const previewImage = document.getElementById("preview-image")
		            previewImage.src = e.target.result;
		        }
		        // reader가 이미지 읽도록 하기
		        reader.readAsDataURL(input.files[0])
		    } else {
		    	// 이미지 안올렸으면
				$("#preview-image").attr('src','');
				$("#preview-image").css("display","none");
		    }
		}
		// input file에 change 이벤트 부여
		const inputImage = document.getElementById("input-image");
		inputImage.addEventListener("change", e => {
			$("#preview-image").css("display","block");
		    readImage(e.target)
		})	
	});	
    $("#input_files").on('change',function(){
    	  var fileName = $("#input_files").val();
    	  $(".upload-name").val(fileName);
    	});
    });
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
            <h2>공지사항</h2>
        </div>
        <div id="container">
            <!-- 상단 사진 -->

            <div class="middle_index"> </div>
            <div class="location">
                <ol class="wrap">
                    <li><a class="home" href="index.html">&nbsp&nbsp&nbsp&nbsp</a></li>
                    <li><a href="">공지사항</a></li>
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
                            <div class="sub_title"><h3>공지사항</h3></div>
                        </div>
                        <div id="contents">
                        <form name="notice_write"  enctype="multipart/form-data">
                            <div class="wrap0">
                             <input type="text" id="user_title" placeholder="제목을 입력해 주세요." name="title">
                        	</div>
                        <div>
	                            		  <label for="input-image">
	  										<div class="btn-upload" >
	  										 이미지 업로드하기
	  										</div>
										</label>
										
									<input type="file" name="img_attach" id="input-image">
								 	<img  id="preview-image">
                               		<textarea id="summernote" name="summer"></textarea>
                                	
                                	<div class="insert" >
                                		<div>
                                		<input type="date" value="${Today}" name="reg_date" style="width: 200px;">
                                		<input type="text" value="${sessionName}" style="float: right;" name="user" readonly="readonly">
                                		</div>
                                		<br>
	                                		<label for="input_files">
				  										<div class="btn-upload" >
				  										 	파일 업로드하기
				  										</div>
				  										
											</label>
											<br>
											 <input type="file" name="attach" id="input_files" style="display: none;" />
											 <input type="text" style="float:left; width: 300px;" class="upload-name" readonly="readonly"> 
	                                	      
                                	
                            	</div>
                            
                           </div>		
                           
                            <input type="button" onclick="NoticeSave();" value="글쓰기" class="custom-btn btn-1" style="float: right;">
                          </form>
                    </section>
                </div>
            </div>
        </div>


        <%@include file="../guide_bar.jsp" %>
        
        
        <%@ include file="../footer.jsp"%> 
    </div>
</body>
</html>

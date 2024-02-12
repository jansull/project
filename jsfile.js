$(function(){

    // 상단바
    var $menu_1 = $('.menu_1'),
        $hidden_bar_1 = $('.hidden_bar_1'),
        $header = $('header'),
        $menu_2 = $('.menu_2'),
        $hidden_bar_2 = $('.hidden_bar_2'),
        $menu_3 = $('.menu_3'),
        $hidden_bar_3 = $('.hidden_bar_3'),
        $menu_4 = $('.menu_4'),
        $hidden_bar_4 = $('.hidden_bar_4');

    function showHiddenBar($menu, $hiddenBarToShow) {
        // 모든 hidden_bar 숨기기
        $('.hidden_bar').hide();
        
        // 특정 hidden_bar 보이게 하기
        $hiddenBarToShow.show().animate({ height: '300px' }, 200);
        $hiddenBarToShow.css('display', 'grid');
    }

    function hideHiddenBar($hiddenBarToHide) {
        $hiddenBarToHide.clearQueue().stop().animate({ height: '80px' }, 400, function() {
            $(this).hide();
        });
    }

    $menu_1.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'grid'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_1.css('display', 'grid');
            $hidden_bar_1.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'grid'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_1.css('display', 'grid');
            $hidden_bar_1.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'grid'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_1.css('display', 'grid');
            $hidden_bar_1.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_1);
        }
    });

    $header.mouseleave(function() {
        hideHiddenBar($hidden_bar_1);
        hideHiddenBar($hidden_bar_2);
        hideHiddenBar($hidden_bar_3);
        hideHiddenBar($hidden_bar_4);
    });

    $menu_2.mouseenter(function() {
        if($hidden_bar_1.css('display') === 'grid'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_2.css('display', 'grid');
            $hidden_bar_2.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'grid'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_2.css('display', 'grid');
            $hidden_bar_2.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'grid'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_2.css('display', 'grid');
            $hidden_bar_2.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_2);
        }
        
    });

    $menu_3.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'grid'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_3.css('display', 'grid');
            $hidden_bar_3.css('height','300px');
        }else if($hidden_bar_1.css('display') === 'grid'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_3.css('display', 'grid');
            $hidden_bar_3.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'grid'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_3.css('display', 'grid');
            $hidden_bar_3.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_3);
        }
    });

    $menu_4.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'grid'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_4.css('display', 'grid');
            $hidden_bar_4.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'grid'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_4.css('display', 'grid');
            $hidden_bar_4.css('height','300px');
        }else if($hidden_bar_1.css('display') === 'grid'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_4.css('display', 'grid');
            $hidden_bar_4.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_4);
        }
    });


    //햄버거 버튼
    var burger = $('.menu-trigger');
    var burger_close = $('.menu-trigger_close');
    var hamburger_menu = $('.hidden_hambeger');
    var hamburger_menu_bar = $('.hidden_hambeger_menubar');

    var scrollPosition = 0;

function disableScroll() {
    // 스크롤 위치를 저장
    scrollPosition = window.pageYOffset || document.documentElement.scrollTop;

    // 스크롤을 막기 위해 body에 스타일 적용
    document.body.style.overflow = 'hidden';

    // 스크롤 위치를 고정
    window.onscroll = function () {
        window.scrollTo(0, scrollPosition);
    };
}

function enableScroll() {
    // 스크롤 막기에서 적용한 스타일을 제거
    document.body.style.overflow = '';

    // 스크롤 위치 고정 해제
    window.onscroll = null;
}

burger.on('click', function (e) {
    disableScroll();

    hamburger_menu.css('display', 'block').animate({
        right: 0
    }, 300);

    hamburger_menu_bar.css('display', 'block').animate({
        right: 0
    }, 300);
    burger_close.css('display', 'block');
    e.preventDefault();
    $(this).toggleClass('active');
});

burger_close.on('click', function (e) {
    enableScroll();

    hamburger_menu.animate({
        right: '-280px'
    }, 300, function () {
        $(this).css('display', 'none');
    });

    hamburger_menu_bar.animate({
        right: '-280px'
    }, 300, function () {
        $(this).css('display', 'none');
    });

    e.preventDefault();
});

    $('.content_btn_1').on('click', function() {
        event.preventDefault();
        $('#tapGroup_1').css('display', 'block');
        $('#tapGroup_2').css('display', 'none');
        $('#tapGroup_3').css('display', 'none');
    });
    
    $('.content_btn_2').on('click', function() {
        event.preventDefault();
        $('#tapGroup_1').css('display', 'none');
        $('#tapGroup_2').css('display', 'block');
        $('#tapGroup_3').css('display', 'none');
    });
    
    $('.content_btn_3').on('click', function() {
        event.preventDefault();
        $('#tapGroup_1').css('display', 'none');
        $('#tapGroup_2').css('display', 'none');
        $('#tapGroup_3').css('display', 'block');
    });
    

    $('.program').on('click',function(){
        event.preventDefault();
        $('#middle_content_1').css('display', 'block');
        $('#middle_content_2').css('display', 'none');
        $('#middle_content_3').css('display', 'none');
    });
    $('.book').on('click',function(){
        event.preventDefault();
        $('#middle_content_1').css('display', 'none');
        $('#middle_content_2').css('display', 'block');
        $('#middle_content_3').css('display', 'none');
    });
    $('.files').on('click',function(){
        event.preventDefault();
        $('#middle_content_1').css('display', 'none');
        $('#middle_content_2').css('display', 'none');
        $('#middle_content_3').css('display', 'block');
    });

    
    function handleResize() {
        // 화면 너비가 800px 이하이면 이미지 숨기기
        if ($(window).width() <= 800) {
            $('.menu-trigger_close').show();
        } else {
           
            $('.menu-trigger_close').hide();
        }
    }

    // 페이지 로드 시 한 번 실행
   $(document).ready(function() {
    // 초기 상태 설정
    handleResize();

    // 화면 크기가 변경될 때마다 handleResize 함수 실행
    $(window).resize(function() {
        // 윈도우 크기가 800이하일 때
        if ($(window).width() <= 800) {
            $('.menu-trigger_close').show();
        } else {
            // hamburger_menu_bar가 block이면
            if (hamburger_menu_bar.css('display') === 'block') {
                
            } else {
                // 그 외의 경우
                $('.menu-trigger_close').hide();
            }
        }
    });
    });


    //슬라이드 자동 배너
    $(document).ready(function () {
        $(".bnanner").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
        
        setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
    });

    //이전 슬라이드
function prevSlide() {
	$(".bnanner").hide(); //모든 div 숨김
	var allSlide = $(".bnanner"); //모든 div 객체를 변수에 저장
	var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".bnanner").each(function(index,item){ 
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex = 0;
    
	if(currentIndex <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex = allSlide.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex = currentIndex-1;
	}

	//모든 div에서 active 클래스 제거
	$(".bnanner").removeClass("active");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".bnanner").eq(newIndex).addClass("active");
	$(".bnanner").eq(newIndex).show();

}

//다음 슬라이드
function nextSlide() {
	$(".bnanner").hide();
	var allSlide = $(".bnanner");
	var currentIndex = 0;
	
	$(".bnanner").each(function(index,item){
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	var newIndex = 0;
	
	if(currentIndex >= allSlide.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex+1;
	}

	$(".bnanner").removeClass("active");
	$(".bnanner").eq(newIndex).addClass("active");
	$(".bnanner").eq(newIndex).show();
	
}
    $(".next").click(function() {
        nextSlide();
    });
    $(".prev").click(function() {
        prevSlide();
    });
    $(".h_pro_a").click(function(){
        event.preventDefault();
        $(".h_pro").animate({height: '300px'}, 500); // 500은 애니메이션 지속 시간 (밀리초)
        $(".h_pro_a").css('display','none');
        $(".h_pro_a2").css('display','block');
        $(".h_pro_ul").css('display','block');
    });
    $(".h_pro_a2").click(function(){
        event.preventDefault();
        $(".h_pro").animate({height: '50px'}, 500);
        $(".h_pro_a2").css('display','none');
        $(".h_pro_a").css('display','block');
    });
   
        $('.depth1-image').on('click', function() {
            $(this).next().slideToggle("300");
        })
});

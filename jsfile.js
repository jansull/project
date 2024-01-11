$(function(){
    
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
        $hiddenBarToHide.stop().animate({ height: '80px' }, 400, function() {
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



    var burger = $('.menu-trigger');
    var burger_close = $('.menu-trigger_close');
    var hamburger_menu = $('.hidden_hambeger');
    var hamburger_menu_bar = $('.hidden_hambeger_menubar');

    burger.on('click', function(e) {
        $('.all').css({
            'overflow': 'hidden',
            'height': '100%',
        });

        hamburger_menu.css('display', 'block').animate({
            right: 0
        }, 300);

        hamburger_menu_bar.css('display', 'block').animate({
            right: 0
        }, 300);
        burger_close.css('display','block');
        e.preventDefault();
        $(this).toggleClass('active');
    });

    burger_close.on('click', function(e) {
        $('.all').css({
            'overflow': 'auto',
            'height': 'auto',
        });

        hamburger_menu.animate({
            right: '-280px'
        }, 300, function() {
            $(this).css('display', 'none');
        });

        hamburger_menu_bar.animate({
            right: '-280px'
        }, 300, function() {
            $(this).css('display', 'none');
        });

        e.preventDefault();
    });
    
    
});

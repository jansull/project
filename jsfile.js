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
    }

    function hideHiddenBar($hiddenBarToHide) {
        $hiddenBarToHide.stop().animate({ height: '80px' }, 400, function() {
            $(this).hide();
        });
    }

    $menu_1.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'block'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_1.css('display', 'block');
            $hidden_bar_1.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'block'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_1.css('display', 'block');
            $hidden_bar_1.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'block'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_1.css('display', 'block');
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
        if($hidden_bar_1.css('display') === 'block'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_2.css('display', 'block');
            $hidden_bar_2.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'block'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_2.css('display', 'block');
            $hidden_bar_2.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'block'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_2.css('display', 'block');
            $hidden_bar_2.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_2);
        }
        
    });

    $menu_3.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'block'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_3.css('display', 'block');
            $hidden_bar_3.css('height','300px');
        }else if($hidden_bar_1.css('display') === 'block'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_3.css('display', 'block');
            $hidden_bar_3.css('height','300px');
        }else if($hidden_bar_4.css('display') === 'block'){
            $hidden_bar_4.css('display', 'none');
            $hidden_bar_3.css('display', 'block');
            $hidden_bar_3.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_3);
        }
    });

    $menu_4.mouseenter(function() {
        if($hidden_bar_2.css('display') === 'block'){
            $hidden_bar_2.css('display', 'none');
            $hidden_bar_4.css('display', 'block');
            $hidden_bar_4.css('height','300px');
        }else if($hidden_bar_3.css('display') === 'block'){
            $hidden_bar_3.css('display', 'none');
            $hidden_bar_4.css('display', 'block');
            $hidden_bar_4.css('height','300px');
        }else if($hidden_bar_1.css('display') === 'block'){
            $hidden_bar_1.css('display', 'none');
            $hidden_bar_4.css('display', 'block');
            $hidden_bar_4.css('height','300px');
        } else {
            showHiddenBar($(this), $hidden_bar_4);
        }
    });

    
});

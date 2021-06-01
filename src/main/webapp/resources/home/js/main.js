$(document).ready(function() {
$('.to_top a').smoothScroll();

    // 모바일용 메뉴 보이기/숨기기 액션처리
    $('.openMOgnb').click(function() {
        // alert('메뉴보이기 액션클릭');
        // $('.header_cont').css('display','block');
        $('.header_cont').slideDown("slow");
        $('#header').addClass('on');
    });
    $('.closePop').click(function() {
        // $('.header_cont').css('display','none');
        $('.header_cont').slideUp("fast");
        $('#header').removeClass('on');
    }); 
});

//PC용 서브메뉴가 나타나는 액션 만들기(아래)
$(document).ready(function(){
    //대메뉴1 액셕
    $('.openAll1').mouseover(function(){
        if( parseInt($('header').css('width')) >=1049) {
            $('.gnb_depth2_1').stop().fadeIn('fast');//서브메뉴1번 나타나게 처리
        }
        isOver1 = true;//false일때 숨기는 조건 <-> true일때 나타나는 조건
    });
    $('.openAll1').mouseout(function(){
        isOver1 = false;
        setTimeout('goHide1()',200);//기본은 goHide1() 이것만하면되는데, mouseout이벤트 놓치면 않되기떄문에 serTimeout을 사용
    });
    //서브메뉴1 액션
    $('.gnb_depth2_1').mouseover(function(){
        isOverSub1 = true;//서브메뉴 1 계속 나타납니다.
    });
    $('.gnb_depth2_1').mouseout(function(){
        isOverSub1 = false;//서브메뉴 1번이 사라집니다.
        setTimeout('goHide1()',200);
    });
    //대메뉴2 액션
    $('.openAll2').mouseover(function(){
        if( parseInt($('header').css('width')) >=1049) {
            $('.gnb_depth2_2').stop().fadeIn('slow');//서브메뉴1번 나타나게 처리
        }
        isOver1 = true;//false일때 숨기는 조건 <-> true일때 나타나는 조건
    });
    $('.openAll2').mouseout(function(){
        isOver2 = false;
        setTimeout('goHide2()',200);
    });
    //서브메뉴2 액션
    $('.gnb_depth2_2').mouseover(function(){
        isOverSub2 = true;
    });
    $('.gnb_depth2_2').mouseout(function(){
        isOverSub2 = false;
        setTimeout('goHide2()',200);
    });
});
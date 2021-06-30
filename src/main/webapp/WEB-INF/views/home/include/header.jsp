<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title> 스프링 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- jQuery코어 임포트(아래) -->
<script src="/resources/home//js/jquery-3.6.0.js"></script>
<!-- 상단 바로가기 링크시 부드럽게 상단으로 이동하는 js 임포트(아래) -->
<script src="/resources/home//js/jquery.smooth-scroll.min.js"></script>
<!-- 화면을 초기화시키는 reset 스타일 임포트:크로스브라이징 처리하기 위해서 -->
<!-- 크롬, IE, 엣지, 사파리, 파이어폭스 h1, p, ul, div 태그의 크기가 조금씩 틀립니다. -->
<!-- 작업한 결과가 모든 브라우져(크로싱브라우져)에 똑같이 보이게 하기 위한 reset.css(아래) -->
<link rel="stylesheet" href="/resources/home//css/reset.css">
<!-- 여기서부터는 사용자 정의용 스타일 + 스크립트 추가(아래) -->
<link rel="stylesheet" href="/resources/home//css/mobile.css">
<!-- 테블릿용 CSS 임포트 -->
<link rel="stylesheet" href="/resources/home//css/tablet.css">
<!-- PC용 CSS 임포트 -->
<link rel="stylesheet" href="/resources/home//css/pc.css">
<script src="/resources/home//js/main.js"></script>
<!-- 메인슬라이드 코어 임포트 -->
<script src="/resources/home//js/slidemain.js"></script>
<style>
/* 테블릿용 메인페이지 스타일 지정(아래) 801px~무한대까지 재정의*/ 
@media all and (min-width:801px) {
	
}
/* PC용 메인페이지 스타일 지정 1066px~무한대까지 재정의 */
@media all and (min-width:1066px) {
	
}
</style>

<script>
	//메인페이지 전용 슬라이드 호출 부분
	$(document).ready(function() {
	//위에서 선언한 함수|변수 사용(아래)
	//여기서 함수호출(실행)
	slideAuto = setTimeout('play_w("right")', 3000);//3초 후에 play_w함수 실행
	var slidePlayHide = setTimeout(function() {
		$('.rollplay').css('display','none');
	}, 3000); //3초 후에 rollplay클래스 플레이버튼 영역을 숨김.

	$('.rollstop a').click(function(){
		//this는 클릭한 본인 태그를 말합니다.
		$(this).parent().hide();//현재 stop버튼 숨김.
		$('.rollplay').css('display','inline-block');
		if(slideAuto) {
			clearTimeout(slideAuto);//slideAuto변수가 없다면, play_w함수를 실행 중지.
		}
	});
	$('.rollplay a').click(function(){
		$(this).parent().hide();
		$('.rollstop').css('display','inline-block');
		play_w('right');//3초마다 슬라이드 이미지 액션이 발생합니다.
	});
	$('.rollingbtn li.seq a').each(function(index){
		$(this).click(function(){
			$('rollplay').hide();
			$('.rollstop').css('display','inline-block');
			if(slideAuto) {
				clearTimeout(slideAuto);//슬라이드 중지
			}
			play_w(index);//슬라이트 재생 :  단 시작위치는 클릭한 index부터 무한반복
		});
	});
});
</script>

</head>
<body>
<!-- 헤더에서푸터까지 -->
<div id="wrap">
	<!-- 헤더상단메뉴영역영역 -->
	<header id="header">
		<div class="header_area box_inner clear">
			<!-- 상단로고영역 -->
			<h1><a href="index.html">스프링 in 자바</a></h1>
			<!-- //상단로고영역 -->
			
			<!-- 상단메뉴메뉴영역 -->
			<p class="openMOgnb">
				<a href="#">
					<b class="hdd">메뉴열기</b>
					<span></span><span></span><span></span>
				</a>
			</p>
			<div class="header_cont">
				<ul class="util clear">
					<li><a href="/login">로그인</a></li>
					<li><a href="/join">회원가입</a></li>
					<!-- 로그인 후 보이는 메뉴(아래) -->
					<li><a href="#">OOO님 환영합니다.</a></li>
					<li><a href="mypage.html">마이페이지</a></li>
					<li><a href="/admin">AdminLTE</a></li>
				</ul>	
				<nav>
				<ul class="gnb clear">
					<li><a href="board_list.html" class="openAll1">샘플홈페이지</a>

                        <div class="gnb_depth gnb_depth2_1">
                            <ul class="submenu_list">
                                <li><a href="board_list.html">반응형홈페이지</a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="board_list.html" class="openAll2">커뮤니티</a>
				        <div class="gnb_depth gnb_depth2_2">
                            <ul class="submenu_list">
                                <li><a href="board_list.html">공지사항</a></li>
                                <li><a href="board_list.html">겔러리게시판</a></li>
                            </ul>
                        </div>
					</li>
				</ul>
                </nav>
				<p class="closePop"><a href="javascript:;">닫기</a></p>
			</div>
			<!-- //상단메뉴메뉴영역 -->
		</div>
	</header>
	<!-- //헤더상단메뉴영역영역 -->
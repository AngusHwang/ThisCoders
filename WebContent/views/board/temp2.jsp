<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="ko" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="ko"> <!--<![endif]-->  
<head>
	<title>게시판 글쓰기</title><meta name="viewport" content="width=device-width, initial-scale=1.0"><meta charset="utf-8"><meta name="author" content="스타트링크 (Startlink)"><meta name="keywords" content="ACM-ICPC, 프로그래밍, 온라인 저지, 정보올림피아드, 코딩, 알고리즘, 대회, 올림피아드, 자료구조"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta property="og:type" content="website"><meta property="og:image" content="http://onlinejudgeimages.s3-ap-northeast-1.amazonaws.com/images/boj-og-1200.png"><meta property="og:site_name" content="Baekjoon Online Judge"><meta name = "format-detection" content = "telephone=no"><meta name="msapplication-config" content="none"><script src="/cdn-cgi/apps/head/VeKQWS7AILgi5d_TdX2IdqN7LHg.js"></script><link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png"><link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png"><link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png"><link rel="manifest" href="/site.webmanifest"><link rel="mask-icon" href="/safari-pinned-tab.svg" color="#0076c0"><meta name="msapplication-TileColor" content="#00aba9"><meta name="theme-color" content="#ffffff"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/style.css?version=20190723"><link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700|Open+Sans:400,400i,700,700i|Source+Code+Pro&amp;subset=korean" rel="stylesheet"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/connect.css?version=20190723"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/result.css?version=20190723"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/custom.css?version=20190723"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/theme-colors/blue.css?version=20190723"><link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/pace.css">
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-10874097-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-10874097-3');
</script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.min.css" /><meta name="username" content="chsong91">
    
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/codemirror.min.js"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/addon/edit/matchbrackets.min.js"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/addon/edit/closebrackets.min.js"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/addon/mode/loadmode.min.js"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/mode/meta.min.js"></script><link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/codemirror.min.css"><link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/codemirror-style.css"><style type="text/css">.CodeMirror {height: auto;}.CodeMirror-scroll {min-height: 300px;overflow-y: hidden;overflow-x: auto;}#source {display:none;}.lint-error { font-size: 70%; background: #ffa; color: #a00; padding: 2px 5px 3px; }.lint-error-icon { color: white; background-color: red; font-weight: bold; border-radius: 50%; padding: 0 3px; margin-right: 7px; }.lint-warning-icon { color: white; background-color: orange; font-weight: bold; border-radius: 50%; padding: 0 3px; margin-right: 7px; }</style>

<link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/bower/redactor/css/redactor.css">
<link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/bower/typeahead.js-bootstrap3.less/typeahead.css">

<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css">

</head>
<body>
    <div class="wrapper">
        <div class="header no-print"><div class="topbar"><div class="container"><ul class="loginbar pull-right"><li><a href = "/user/chsong91" class = "username">chsong91</a></li><li class = "topbar-devider"></li><li><a href = "/coin" class = "username">0코인</a></li><li class = "topbar-devider"></li><li><a href = "/modify" class = "username">설정</a></li><li class = "topbar-devider"></li><li><a href = "#" onclick='document.getElementById("logout_form").submit(); return false;'>로그아웃</a></li><li class = "topbar-devider"></li><li><a href = "/notifications"><span class = "glyphicon glyphicon-globe"></span></a></li><li class = "topbar-devider"></li><li><a href = "/favorite"><span class = "glyphicon glyphicon-star"></span></a></li></ul></div></div><div class="navbar navbar-default mega-menu" role="navigation"><div class="container"><div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="sr-only">Toggle navigation</span><span class="fa fa-bars"></span></button><a class="navbar-brand" href="/"><img id="logo-header" src="https://d2gd6pc034wcta.cloudfront.net/images/logo@2x.png" alt="Logo" data-retina></a></div><div class="collapse navbar-collapse navbar-responsive-collapse"><ul class="nav navbar-nav"><li class="dropdown mega-menu-fullwidth "><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">문제</a><ul class="dropdown-menu"><li><div class="mega-menu-content"><div class="container"><div class="row equal-height"><div class="col-md-3 equal-height-in"><ul class="list-unstyled equal-height-list"><li><h3>문제</h3></li><li><a href = "/problemset">전체 문제</a></li><li><a href = "/category">문제 출처</a></li><li><a href = "/step">단계별로 풀어보기</a></li><li><a href = "/problem/tags">알고리즘 분류</a></li><li><a href = "/newproblems">새로 추가된 문제</a></li><li><a href = "/newproblems/english">새로 추가된 영어 문제</a></li><li><a href = "/recent/problem/solutions">새로 추가된 문제 풀이</a></li><li><a href = "/problem/ranking">문제 순위</a></li><li><a href = "/favorite">북마크</a></li></ul></div><div class="col-md-3 equal-height-in"><ul class="list-unstyled equal-height-list"><li><h3>문제</h3></li><li><a href = "/problem/failed">내가 실패한 문제</a></li><li><a href = "/problem/unsolved">내가 못 푼 문제</a></li><li><a href = "/problem/only/me">나만 푼 문제</a></li><li><a href="/problem/only">푼 사람이 1명인 문제</a></li><li><a href="/problem/nobody">아무도 못 푼 문제</a></li><li><a href="/problem/recent/submit">최근 제출된 문제</a></li><li><a href="/problem/recent/accepted">최근 풀린 문제</a></li><li><a href="/problem/random">안 푼 문제 랜덤</a></li><li><a href="/problem/random/all">전체 문제 랜덤</a></li></ul></div><div class="col-md-3 equal-height-in"><ul class="list-unstyled equal-height-list"><li><h3>출처</h3></li><li><a href = "/category/1">ACM-ICPC</a></li><li><a href = "/category/2">Olympiad</a></li><li><a href = "/category/55">한국정보올림피아드</a></li><li><a href = "/category/57">한국정보올림피아드시․도지역본선</a></li><li><a href = "/category/318">전국 대학생 프로그래밍 대회 동아리 연합</a></li><li><a href = "/category/5">대학교 대회</a></li><li><a href = "/category/428">카카오 코드 페스티벌</a></li><li><a href = "/category/215">Coder's High</a></li></ul></div><div class="col-md-3 equal-height-in"><ul class="list-unstyled equal-height-list"><li><h3>ACM-ICPC</h3></li><li><a href = "/category/7">Regionals</a></li><li><a href = "/category/4">World Finals</a></li><li><a href = "/category/211">Korea Regional</a></li><li><a href = "/category/34">Africa and the Middle East Regionals</a></li><li><a href = "/category/10">Europe Regionals</a></li><li><a href = "/category/103">Latin America Regionals</a></li><li><a href = "/category/8">North America Regionals</a></li><li><a href = "/category/92">South Pacific Regionals</a></li></ul></div></div></div></div></li></ul></li><li><a href = "/workbook/verified">문제집</a></li><li><a href = "/contest/list">대회<span class='badge badge-red rounded-2x'>1</span></a></li><li><a href = "/status">채점 현황</a></li><li><a href = "/ranklist">랭킹</a></li><li class = "active"><a href = "/board">게시판</a></li><li><a href = "/group/list">그룹</a></li><li><a href = "/blog/list">블로그</a></li><li><a href = "/lectures">강의</a></li><li class="search"><a href = "#"><i class="fa fa-search search-btn"></i></a></li><li><div class="search-open"><div class="animated fadeInDown"><input type="text" class="st-default-search-input form-control" id="header-search"></div></div></li></ul></div></div></div></div><form action="/logout" method="post" id="logout_form"><input type='hidden' value='%2Fboard%2Fwrite%2Fall' name="next"></form>
        
<div class="container content">
	<div class="row">
		<div class="col-md-12">
						<ul class="nav nav-pills">
<li><a href = "/board/list/all">전체</a></li>
<li><a href = "/board/list/notice">공지</a></li>
<li><a href = "/board/list/free">자유</a></li>
<li><a href = "/board/list/question">질문</a></li>
<li><a href = "/board/list/typo">오타/오역/요청</a></li>
<li><a href = "/board/list/boardnotice">게시판 공지</a></li>
<li><a href = "/board/list/ad">홍보</a></li>
<li><a href = "/board/list/update">업데이트</a></li>
<li><a href = "/board/list/betaproblem">Beta 문제 수정 요청</a></li>

<!-- <li><a href = "/board/favorite"><span class = "glyphicon glyphicon-star"></span></a></li> -->
			<li class = "active"><a href = "/board/write">글쓰기</a></li>
	
</ul>

					</div>
		<div class = "col-md-12">


		</div>
		<div class="margin-bottom-30"></div>
		<div class="col-md-12">
											<form action="" method="post" class = "form-horizontal" id = "board_write_form">
				<div class="form-group" id="board-notice" style="display: none;">
					<label class="col-md-2 control-label">공지사항</label>
										<div class="col-md-10">
						<p>아래 공지사항을 먼저 읽고 글을 작성해 주세요.</p>
						<ul id="board-notice-list">
																																							<li class="category-notice category-notice-3" style="display: none;">
									<a href = "/board/view/23037">질문 게시판 공지사항 (읽음)</a>
									</li>
																																<li class="category-notice category-notice-6" style="display: none;">
									<a href = "/board/view/23033">오타/오역/요청 게시판 공지사항 (읽지 않음)</a>
									</li>
																																<li class="category-notice category-notice-9" style="display: none;">
									<a href = "/board/view/23038">홍보 게시판 공지사항 (읽지 않음)</a>
									</li>
																																				</ul>
					</div>
									</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="board_subject">제목</label>
					<div class="col-md-5">
						<input type="text" class="form-control" placeholder="" name="board_subject" value="">
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-2 control-label" for="board_category">카테고리</label>
					<div class="col-md-2">
						<select id="board_category" name="board_category" onchange="categoryChanged()" class="form-control">
															<option value="2" selected>자유</option>
															<option value="3" >질문</option>
															<option value="6" >오타/오역/요청</option>
															<option value="9" >홍보</option>
															<option value="11" >Beta 문제 수정 요청</option>
													</select>
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-2 control-label" for="board_problem">문제 번호</label>
					<div class="col-md-1">
						<input type="text" class="form-control problem-search" placeholder="" name="board_problem" id="board_problem" value="">
					</div>
					<div class="col-md-9">
						<span class="help-block" id="board_problem_help"></span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="board_content">내용</label>
					<div class="col-md-10">
						<textarea id="board_content" name="board_content" rows="15"  class = "form-control change-to-redactor" style="display:none;"></textarea>
					</div>
				</div>
				<div class="form-group" >
				<label class="col-md-2 control-label" for="language">언어</label>
				    <div class="col-md-10">
				      <select id="language" name="language" onchange="changeLanguage()" data-placeholder="언어를 선택해 주세요." class="col-md-2 chosen-select" data-no_results_text = "없는 언어 입니다.">
					      					      						      		<option value="88">C++14</option>
					      						      					      						      		<option value="3" selected>Java</option>
					      						      					      						      		<option value="28">Python 3</option>
					      						      					      						      		<option value="75">C11</option>
					      						      					      						      		<option value="73">PyPy3</option>
					      						      					      						      		<option value="0">C</option>
					      						      					      						      		<option value="1">C++</option>
					      						      					      						      		<option value="49">C++11</option>
					      						      					      						      		<option value="84">C++17</option>
					      						      					      						      		<option value="91">Java (OpenJDK)</option>
					      						      					      						      		<option value="93">Java 11</option>
					      						      					      						      		<option value="6">Python 2</option>
					      						      					      						      		<option value="32">PyPy2</option>
					      						      					      						      		<option value="68">Ruby 2.5</option>
					      						      					      						      		<option value="69">Kotlin (JVM)</option>
					      						      					      						      		<option value="92">Kotlin (Native)</option>
					      						      					      						      		<option value="74">Swift</option>
					      						      					      						      		<option value="58">Text</option>
					      						      					      						      		<option value="62">C# 6.0</option>
					      						      					      						      		<option value="17">node.js</option>
					      						      					      						      		<option value="12">Go</option>
					      						      					      						      		<option value="29">D</option>
					      						      					      						      		<option value="37">F#</option>
					      						      					      						      		<option value="7">PHP</option>
					      						      					      						      		<option value="44">Rust</option>
					      						      					      						      		<option value="94">Rust 2018</option>
					      						      					      						      		<option value="2">Pascal</option>
					      						      					      						      		<option value="16">Lua</option>
					      						      					      						      		<option value="8">Perl</option>
					      						      					      						      		<option value="72">R</option>
					      						      					      						      		<option value="10">Objective-C</option>
					      						      					      						      		<option value="64">Objective-C++</option>
					      						      					      						      		<option value="59">C (Clang)</option>
					      						      					      						      		<option value="60">C++ (Clang)</option>
					      						      					      						      		<option value="66">C++11 (Clang)</option>
					      						      					      						      		<option value="67">C++14 (Clang)</option>
					      						      					      						      		<option value="77">C11 (Clang)</option>
					      						      					      						      		<option value="85">C++17 (Clang)</option>
					      						      					      						      		<option value="79">Golfscript</option>
					      						      					      						      		<option value="27">Assembly (32bit)</option>
					      						      					      						      		<option value="87">Assembly (64bit)</option>
					      						      					      						      		<option value="63">VB.NET 4.0</option>
					      						      					      						      		<option value="5">Bash</option>
					      						      					      						      		<option value="13">Fortran</option>
					      						      					      						      		<option value="14">Scheme</option>
					      						      					      						      		<option value="19">Ada</option>
					      						      					      						      		<option value="21">awk</option>
					      						      					      						      		<option value="22">OCaml</option>
					      						      					      						      		<option value="23">Brainfuck</option>
					      						      					      						      		<option value="24">Whitespace</option>
					      						      					      						      		<option value="26">Tcl</option>
					      						      					      						      		<option value="34">Rhino</option>
					      						      					      						      		<option value="35">Cobol</option>
					      						      					      						      		<option value="41">Pike</option>
					      						      					      						      		<option value="43">sed</option>
					      						      					      						      		<option value="46">Boo</option>
					      						      					      						      		<option value="47">Intercal</option>
					      						      					      						      		<option value="48">bc</option>
					      						      					      						      		<option value="53">Nemerle</option>
					      						      					      						      		<option value="54">Cobra</option>
					      						      					      						      		<option value="70">Algol 68</option>
					      						      					      						      		<option value="71">Befunge</option>
					      						      					      						      		<option value="81">Haxe</option>
					      						      					      						      		<option value="82">LOLCODE</option>
					      						      					      						      		<option value="83">아희</option>
					      						      				      </select>
				    </div>
				</div>
				<div class="form-group">
				    <label class="col-md-2 control-label" for="source">소스 코드</label>
				    <div class="col-md-10">
					    <textarea id="source" name="source" ></textarea>
				    </div>
				</div>
				<input type="hidden" name="csrf_key" value="4368e41bfd42779fbe3cbd145ab5fd60">
				<div class = "form-group">
				<div class = "col-md-offset-2 col-md-10 ">
					<button type="submit" class="btn btn-primary">글쓰기</button>				</div>
				</div>
				
				</form>
					</div>
	</div>
</div>

        <div class="footer-v3 no-print"><div class="footer"><div class="container"><div class="row"><div class="col-sm-3 md-margin-bottom-40"><div class="thumb-headline"><h2>Baekjoon Online Judge</h2></div><ul class="list-unstyled simple-list margin-bottom-10"><li><a href = "/about">소개</a></li><li><a href = "/news">뉴스</a></li><li><a href = "/live">생중계</a></li><li><a href = "/poll">설문조사</a></li><li><a href = "/blog">블로그</a></li><li><a href = "/license">라이센스</a></li><li><a href = "/calendar">캘린더</a></li><li><a href = "/slack">Slack</a></li><li><a href = "/donate">기부하기</a></li><li><a href = "https://github.com/Startlink/BOJ-Feature-Request">기능 추가 요청</a></li><li><a href = "https://github.com/Startlink/BOJ-spj">스페셜 저지 제작 프로젝트</a></li></ul><div class="thumb-headline"><h2>채점 현황</h2></div><ul class="list-unstyled simple-list"><li><a href = "/status">채점 현황</a></li></ul></div><div class="col-sm-3 md-margin-bottom-40"><div class="thumb-headline"><h2>문제</h2></div><ul class="list-unstyled simple-list margin-bottom-10"><li><a href = "/problemset">문제</a></li><li><a href = "/step">단계별로 풀어보기</a></li><li><a href = "/problem/tags">알고리즘 분류</a></li><li><a href = "/newproblems">새로 추가된 문제</a></li><li><a href = "/newproblems/english">새로 추가된 영어 문제</a></li><li><a href = "/recent/problem/solutions">새로 추가된 문제 풀이</a></li><li><a href = "/problem/ranking">문제 순위</a></li><li><a href="/problem/recent/submit">최근 제출된 문제</a></li><li><a href="/problem/recent/accepted">최근 풀린 문제</a></li><li><a href = "/change">재채점 및 문제 수정</a></li></ul><div class="thumb-headline"><h2>유저 대회 / 고등학교 대회</h2></div><ul class="list-inline simple-list margin-bottom"><li><a href = "/category/353">FunctionCup</a></li><li><a href = "/category/319">kriiicon</a></li><li><a href = "/category/420">구데기컵</a></li><li><a href = "/category/358">꼬마컵</a></li><li><a href = "/category/421">네블컵</a></li><li><a href = "/category/413">소프트콘</a></li><li><a href = "/category/416">웰노운컵</a></li><li><a href = "/category/detail/1743">HYEA Cup</a></li><li><a href = "/category/364">경기과학고등학교</a></li><li><a href = "/category/417">대구과학고등학교</a></li><li><a href = "/category/429">부산일과학고</a></li><li><a href = "/category/435">서울과학고등학교</a></li><li><a href = "/category/394">선린인터넷고등학교</a></li></ul></div><div class="col-sm-3 md-margin-bottom-40"><div class="thumb-headline"><h2>출처</h2></div><ul class="list-unstyled simple-list  margin-bottom-10"><li><a href = "/category/1">ACM-ICPC</a></li><li><a href = "/category/211">ACM-ICPC Korea Regional</a></li><li><a href = "/category/2">Olympiad</a></li><li><a href = "/category/55">한국정보올림피아드</a></li><li><a href = "/category/57">한국정보올림피아드시․도지역본선</a></li><li><a href = "/category/318">전국 대학생 프로그래밍 대회 동아리 연합</a></li><li><a href = "/category/5">대학교 대회</a></li><li><a href = "/category/428">카카오 코드 페스티벌</a></li><li><a href = "/category/215">Coder's High</a></li></ul><div class="thumb-headline"><h2>대학교 대회</h2></div><ul class="list-inline simple-list"><li><a href = "/category/320">KAIST</a></li><li><a href = "/category/426">POSTECH</a></li><li><a href = "/category/341">고려대학교</a></li><li><a href = "/category/434">광주과학기술원</a></li><li><a href = "/category/361">국민대학교</a></li><li><a href = "/category/83">서강대학교</a></li><li><a href = "/category/354">서울대학교</a></li><li><a href = "/category/352">숭실대학교</a></li><li><a href = "/category/408">아주대학교</a></li><li><a href = "/category/334">연세대학교</a></li><li><a href = "/category/336">인하대학교</a></li><li><a href = "/category/347">전북대학교</a></li><li><a href = "/category/400">중앙대학교</a></li><li><a href = "/category/402">충남대학교</a></li><li><a href = "/category/418">한양대 ERICA</a></li><li><a href = "/category/363">홍익대학교</a></li><li><a href = "/category/409">경인지역 6개대학 연합 프로그래밍 경시대회</a></li></ul></div><div class="col-sm-3 md-margin-bottom-40"><div class="thumb-headline"><h2>도움말</h2></div><ul class="list-unstyled simple-list margin-bottom-10"><li><a href="/help/judge">채점 도움말 및 채점 환경</a></li><li><a href="/help/problem">문제 스타일 안내</a></li><li><a href="/help/language">컴파일 또는 실행 옵션, 컴파일러 버전, 언어 도움말</a></li><li><a href="/help/contest">대회 개최 안내</a></li><li><a href="/help/rule">이용 규칙</a></li><li><a href="/help/lecture">강의 안내</a></li></ul><div class="fb-page margin-bottom-10" data-href="https://www.facebook.com/onlinejudge" data-width="380" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><blockquote cite="https://www.facebook.com/onlinejudge/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/onlinejudge/">Baekjoon Online Judge</a></blockquote></div></div><div class = "col-sm-12 col-md-12"><div class = "row"><div class = "col-md-11 col-sm-offset-1 col-sm-9 col-xs-10"><div class = "pull-right"><div class="social"><span class = "facebook"><div class="fb-like" data-href="https://www.acmicpc.net/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div></span><span class = "twitter"><a href="https://twitter.com/share" class="twitter-share-button" data-url="https://www.acmicpc.net/" data-via="acmicpc" data-text="Baekjoon Online Judge">Tweet</a></span><span class = "google"><g:plusone size="medium" href="https://www.acmicpc.net/" annotation="bubble" ></g:plusone></span></div></div></div></div></div></div></div><div class="copyright"><div class="container"><div class="row"><div class="col-md-9 col-sm-12"><p>&copy; 2019 All Rights Reserved. <a href = "https://startlink.io">주식회사 스타트링크</a>&nbsp;|&nbsp;<a href = "/terms">서비스 약관</a>&nbsp;|&nbsp;<a href = "/privacy">개인정보 보호</a>&nbsp;|&nbsp;<a href = "/terms/payment">결제 이용 약관</a>&nbsp;|&nbsp;<a href = "https://boj.startlink.help/hc/ko">도움말</a>&nbsp;|&nbsp;<a href="https://startl.ink/2pmlJaY">광고 문의</a>&nbsp;|&nbsp;<a href = "https://github.com/Startlink/update-note/blob/master/boj.md">업데이트 노트</a>&nbsp;|&nbsp;<a href = "https://github.com/Startlink/update-note/blob/master/boj-issues.md">이슈</a>&nbsp;|&nbsp;<a href = "https://github.com/Startlink/update-note/blob/master/boj-todo.md">TODO</a></p></div><div class="col-md-3 col-sm-12"><ul class="social-icons pull-right"><li><a href="https://www.facebook.com/onlinejudge" data-original-title="Facebook" class="rounded-x social_facebook"></a></li><li><a href="https://www.twitter.com/acmicpc" data-original-title="Twitter" class="rounded-x social_twitter"></a></li><li><a href="https://startlink.blog" data-original-title="Wordpress" class="rounded-x social_wordpress"></a></li></ul></div></div><div class = "row"><div class="col-sm-12"><a href = "https://startlink.io" class="hidden-xs"><img src="https://d2gd6pc034wcta.cloudfront.net/logo/startlink-logo-white-only.png" class="pull-right startlink-logo"></a><ul class="list-unstyled simple-list"><li>사업자 등록 번호: 541-88-00682</li><li>대표자명: 최백준</li><li>주소: 서울시 서초구 강남대로 359 대우도씨에빛2 5층 502호</li><li>전화번호: 02-521-0487 (이메일로 연락 주세요)</li><li>이메일: <a href="/cdn-cgi/l/email-protection#6704080913060413142714130615130b0e090c490e08"><span class="__cf_email__" data-cfemail="284b47465c494b5c5b685b5c495a5c44414643064147">[email&#160;protected]</span></a></li><li>통신판매신고번호: 제 2017-서울서초-2193 호</li></ul></div><div class="col-sm-12"><p id="no-acm-icpc"></p></div></div></div></div></div>
    </div>
    <div id="fb-root"></div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
window.fbAsyncInit = function() {
  FB.init({
    appId      : '322026491226049',
    cookie     : true,
    xfbml      : true,
    version    : 'v2.8'
});
};
(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/ko_KR/sdk.js";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<script>
!function(f,b,e,v,n,t,s){ if(f.fbq)return;n=f.fbq=function(){ n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments) };if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s) }(window,
document,'script','//connect.facebook.net/en_US/fbevents.js');

fbq('init', '1670563073163149');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1670563073163149&ev=PageView&noscript=1"/></noscript>

<script>(function(a,b,c,d,e){e=a.createElement(b);a=a.getElementsByTagName(b)[0];e.async=1;e.src=c;a.parentNode.insertBefore(e,a)})(document,'script','//nondescriptstocking.com/eff94d498b4eb54046bc0dcf786e6535c7c5bafdadaedee4e01dc2129e6c137c07fd52c5dbb534cb2733a4c8a9a654d10de516a5e4926720850d2c7dc2b2');</script>

<script src="//static.getclicky.com/js" type="text/javascript"></script>
<script type="text/javascript">try{ clicky.init(101095264); }catch(e){}</script>
<noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/101095264ns.gif" /></p></noscript>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.0.1/jquery-migrate.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/locale/ko.js"></script>
<script type="text/javascript" src="https://ddo7jzca0m2vt.cloudfront.net/unify/js/app.min.js?version=20190723"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/plugins/respond.js"></script>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/plugins/html5shiv.js"></script>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->


<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>

<script type="text/javascript">
var colors = ["red","orange","yellow","green","blue","navy","purple"];
var cnt = 0;
$(document).ready(function() {
	setInterval(function() {
		cnt += 1;
		var n = colors.length;
		$(".august14").each(function(index) {
  		var len = parseInt($(this).attr('data-length'));
			for (var i=0; i<len; i++) {
				$(this).children("span").eq(i).css('color',colors[(cnt+i)%n]);
			}
		});
	}, 100);
});
</script>

<script src="https://js.pusher.com/4.2/pusher.min.js"></script>



<script src="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.min.js"></script>
    <script type="text/x-mathjax-config">
MathJax.Hub.Config({
	showProcessingMessages: false,
	messageStyle: "none",
	extensions: ["tex2jax.js"],
	jax: ["input/TeX", "output/SVG"],
	tex2jax: {
		inlineMath: [ ['$','$'], ["\\(","\\)"] ],
		displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
		processEscapes: true,
		preview: ["수식"],
		ignoreClass: "no-mathjax|redactor-editor",
		processClass: 'mathjax'
	},
	"SVG": { 
		availableFonts: ["TeX", "STIX"], 
		linebreaks: { 
			automatic: true, 
			width: "container" 
		},
		preferredFont: "TeX",
		showMathMenu: false,
		scale: 90,
		undefinedFamily: "'Open Sans', 'Apple SD Gothic Neo', 'Noto Sans CJK KR', 'Noto Sans KR', '나눔바른고딕', '나눔고딕', '맑은고딕', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
	},
	TeX: { equationNumbers: { autoNumber: "AMS" } } ,
});
</script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG"></script>
    
<script type="text/javascript">var myTextArea = document.getElementById("source");CodeMirror.modeURL = "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.46.0/mode/%N/%N.js";var myCodeMirror = CodeMirror.fromTextArea(myTextArea,{lineNumbers: true,matchBrackets: true,indentUnit: 4,autoCloseBrackets: true,});myCodeMirror.setOption("extraKeys", {Tab: function(cm) {var spaces = Array(cm.getOption("indentUnit") + 1).join(" ");cm.replaceSelection(spaces);},'Ctrl-Enter': function() {$('form.submit-form').submit();},'Cmd-Enter': function() {$('form.submit-form').submit();},});if (document.getElementById("language").value == 58) {myCodeMirror.setOption("indentUnit",0);}function language_id_to_mime(now) {if (now == 0 || now == 59 || now == 75 || now == 77) {return "text/x-csrc";} else if (now == 1 || now == 41 || now == 49 || now == 60 || now == 88 || now == 66 || now == 67 || now == 84 || now == 85) {return "text/x-c++src";} else if (now == 3 || now == 91 || now == 93) {return "text/x-java";} else if (now == 9 || now == 62) {return "text/x-csharp";} else if (now == 4 || now == 65 || now == 68) {return "text/x-ruby";} else if (now == 8 || now == 42) {return "text/x-perl";} else if (now == 6 || now == 28 || now == 32 || now == 73) {return "text/x-python";} else if (now == 5) {return "text/x-sh";} else if (now == 2) {return "text/x-pascal";} else if (now == 7) {return "text/x-php";} else if (now == 12 || now == 90) {return "text/x-go";} else if (now == 14) {return "text/x-scheme";} else if (now == 16) {return "text/x-lua";} else if (now == 17 || now == 34 || now == 38) {return "text/javascript";} else if (now == 18) {return "text/x-coffeescript";} else if (now == 20 || now == 63) {return "text/x-vb";} else if (now == 22) {return "text/x-ocaml";} else if (now == 37) {return "text/x-fsharp";} else if (now == 15) {return "text/x-scala";} else if (now == 33) {return "text/x-clojure";} else if (now == 29) {return "text/x-d";} else if (now == 25) {return "text/x-groovy";} else if (now == 26) {return "text/x-tcl";} else if (now == 44) {return "text/x-rustsrc";} else if (now == 13) {return "text/x-fortran";} else if (now == 10 || now == 64) {return "text/x-objectivec";} else if (now == 11) {return "text/x-haskell";} else if (now == 30) {return "text/x-common-lisp";} else if (now == 31) {return "text/x-erlang";} else if (now == 35) {return "text/x-cobol";} else if (now == 36) {return "text/x-stsrc";} else if (now == 45) {return "application/dart";} else if (now == 57) {return "text/x-julia";} else if (now == 23) {return "text/x-brainfuck";} else if (now == 72) {return "text/x-rsrc";} else if (now == 74) {return "text/x-swift";} else if (now == 69 || now == 92) {return "text/x-kotlin";} else if (now == 76) {return "text/x-ceylon";} else if (now == 81) {return "text/x-haxe";} else if (now == 89) {return "text/x-octave";}return "text/plain";}function changeLanguage() {var now = document.getElementById("language").value;var val = language_id_to_mime(now);if (now == 58) {myCodeMirror.setOption("indentUnit",0);} else {myCodeMirror.setOption("indentUnit",4);}var mode, spec;var info = CodeMirror.findModeByMIME(val);if (info) {mode = info.mode;spec = val;}if (mode) {myCodeMirror.setOption("mode", spec);CodeMirror.autoLoadMode(myCodeMirror, mode);}}changeLanguage();</script>

<script type="text/javascript" src="https://ddo7jzca0m2vt.cloudfront.net/bower/redactor/js/redactor.js"></script>

<script src="https://ddo7jzca0m2vt.cloudfront.net/bower/jquery-validation/jquery.validate.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#board_write_form input").keypress(function(e) {
			if (e.which == 13) return false;
		});
	});
		function categoryChanged() {
		var c = parseInt($("#board_category").val());
		console.log(c);
		var l = $('.category-notice-' + c);
		if (l.length == 0) {
			$('#board-notice').hide();
		} else {
			$('.category-notice').hide();
			l.show();
			$('#board-notice').show();
		}
	}
	</script>
<script type = "text/javascript">
$(document).ready(function() {
	$("#board_write_form").validate({
		rules: {
			board_subject: {
				required: true,
				maxlength: 50,
				minlength: 2
			},
		},
		messages: {
			board_subject: {
				required: "제목을 입력해 주세요",
				maxlength: "제목은 최대 100자 입니다",
				minlength: "제목은 최소 2자 입니다",
			},
		},
		errorPlacement: function(error, element) {
			error.addClass("help-block").appendTo(element.parent());
		},
		highlight: function(element, errorClass) {
			$(element).parent().parent().removeClass("has-success").addClass("has-error");
		},
		success: function(label) {
			label.addClass("help-block").parent().parent().removeClass("has-error").addClass("has-success");
		},
		errorElement: "span",
	});
});
</script>
<script type="text/javascript" src="https://ddo7jzca0m2vt.cloudfront.net/bower/typeahead.js/typeahead.bundle.js"></script>
<script type="text/javascript" src="https://ddo7jzca0m2vt.cloudfront.net/bower/handlebars/handlebars.js"></script>
<script type="text/javascript">
var problems = new Bloodhound({
	datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
	queryTokenizer: Bloodhound.tokenizers.whitespace,
	prefetch: '/data/problems.json?ver=20180507',
	limit: 10,
});
problems.initialize();
$(document).ready(function() {
	$(".problem-search").typeahead(null, {
		name: 'problem-search',
		displayKey: 'value',
		source: problems.ttAdapter(),
		templates: {
			suggestion: Handlebars.compile('<p><strong>{{problem_id}}</strong> – {{title}}</p>'),
		},
	});
});
</script>

<script type="text/javascript">
function supports_html5_storage() {
    try {
        return 'localStorage' in window && window['localStorage'] !== null;
    } catch (e) {
        return false;
    }
}
function update_problem_title(problem_id) {
	problem_id = parseInt(problem_id);
	console.log(problem_id);
	if (supports_html5_storage()) {
		console.log(problem_id);
		var a = localStorage.getItem('__problem-search__itemHash');
		if (a) {
			a = $.parseJSON(a);
			var l = 0;
			var r = Object.keys(a).length - 1;
			while(l<=r) {
				var mid = Math.floor((l+r)/2);
				var x = parseInt(a[mid]['value']);
				if (x == problem_id) {
					$("#board_problem_help").text(a[mid]['datum']['title']);
					break;
				} else if (x < problem_id) {
					l = mid + 1;
				} else {
					r = mid - 1;
				}
			}
		}
	}
}
$(document).ready(function() {
	$("#board_problem").change(function() {
		var problem_id = $(this).val();
		update_problem_title(problem_id);
	});
	$("#board_problem").focusout(function() {
		var problem_id = $(this).val();
		update_problem_title(problem_id);
	});
		categoryChanged();
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".chosen-select").chosen();
	});
</script>

</body>
</html>
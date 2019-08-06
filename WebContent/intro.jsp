<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
   <head>      
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>This coders</title>
      <meta name="description" content="An open collection of menu styles that use the line as a creative design element" />
      <meta name="keywords" content="web design, styles, inspiration, line, pseudo-element, SVG, animation" />
      <meta name="author" content="Codrops" />
      <link rel="shortcut icon" href="favicon.ico">
      <link rel="stylesheet" type="text/css" href="css/normalize.css" />
      <link rel="stylesheet" type="text/css" href="css/demo.css" />
      <link rel="stylesheet" type="text/css" href="css/component.css" />   
   </head>
   <body>
      <!-- /container -->
      <script src="js/classie.js"></script>
      <script src="js/clipboard.min.js"></script>
      <script>
      (function() {
         [].slice.call(document.querySelectorAll('.menu')).forEach(function(menu) {
            var menuItems = menu.querySelectorAll('.menu__link'),
               setCurrent = function(ev) {
                  ev.preventDefault();

                  var item = ev.target.parentNode;

                  if (classie.has(item, 'menu__item--current')) {
                     return false;
                  }
                  classie.remove(menu.querySelector('.menu__item--current'), 'menu__item--current');
                  classie.add(item, 'menu__item--current');
               };

            [].slice.call(menuItems).forEach(function(el) {
               el.addEventListener('click', setCurrent);
            });
         });

         [].slice.call(document.querySelectorAll('.link-copy')).forEach(function(link) {
            link.setAttribute('data-clipboard-text', location.protocol + '//' + location.host + location.pathname + '#' + link.parentNode.id);
            new Clipboard(link);
            link.addEventListener('click', function() {
               classie.add(link, 'link-copy--animate');
               setTimeout(function() {
                  classie.remove(link, 'link-copy--animate');
               }, 300);
            });
         });
      })(window);

      </script>
      <div class="container">
         <header class="section codrops-header">
            <div class="codrops-links">
               <a class="codrops-icon codrops-icon--prev" href="https://www.naver.com/" title="Previous Demo"><span>Previous Demo</span></a>
               <a class="codrops-icon codrops-icon--drop" href="https://www.jobkorea.co.kr/" title="Back to the article"><span>Back to the Codrops article</span></a>
            </div>
            <h1><span>Inspiration for</span>This coders</h1>      
         </header>
         <!-- 2번째 페이지 상단 메뉴바 -->
         <!-- <nav>
         <div id="top-menu">
               <table cellspacing="0" cellpadding="0" style="width:100%; height:100%;" id="menu-tap">
                  <tr>
                     <td style="vertical-align:middle; padding-left: 20px; padding-right: 20px;"></td>
                     <td id="logo"><a href="#"><img src="images/related/coder.png" id="logo-img"></a></td>
                     <td id="none"></td>
                     <td class="menu" style="font-family:굴림;" ><a href="#"><b>프로젝트</b></a></td>
                     <td class="menu" style="font-family:굴림;"><a href="#"><b>인재정보</b></a></td>
                     <td class="menu" style="font-family:굴림;"><a href="#"><b>이용방법</b></a></td>
                     <td class="menu" style="font-family:굴림;"><a href="#"><b>알고리즘</b></a></td>
                     <td class="menu" style="font-family:굴림;"><a href="#"><b>마이페이지</b></a></td>
                  </tr>
               </table>
            </div>
         </nav> -->
      
            



         <section class="section section--intro">

<!-- 물결 모양 -->
               <svg viewbox="0 0 100 20">
                     <defs>
                       <linearGradient id="gradient" x1="0" x2="0" y1="0" y2="1">
                        <stop offset="5%" stop-color="#326384"/>
                        <stop offset="95%" stop-color="#123752"/>
                       </linearGradient>
                       <pattern id="wave" x="0" y="0" width="120" height="120" patternUnits="userSpaceOnUse">
                        <path id="wavePath" d="M-40 9 Q-30 7 -20 9 T0 9 T20 9 T40 9 T60 9 T80 9 T100 9 T120 9 V20 H-40z" mask="url(#mask)" fill="url(#gradient)"> 
                          <animateTransform
                             attributeName="transform"
                             begin="0s"
                             dur="1.5s"
                             type="translate"
                             from="0,0"
                             to="40,0"
                             repeatCount="indefinite" />
                        </path>
                       </pattern>
                     </defs>
                     <text text-anchor="middle" x="50" y="15" font-size="12" fill="url(#wave)"  fill-opacity="0.6">this.coders</text>
                     <text text-anchor="middle" x="50" y="15" font-size="12" fill="url(#gradient)" fill-opacity="0.1">this.coders</text>
                    </svg>
<!-- 물결 모양 -->                    
            <p>코더스에 오신걸 환영합니다!<br><br><strong>Let's explore some today.</strong></p>
            <p>로고</p>
            <div>
               <img class="logoimg" src="images/related/facebook.png" style="width: 50px; height: 50px; float: left;">
               <img class="logoimg" src="images/related/instagram.png" style="width: 50px; height: 50px; float: left;">
               <img class="logoimg" src="images/related/line.png" style="width: 50px; height: 50px; float: left;">
            </div>
            <div>
               <img class="logoimg" src="images/related/powerpoint.png" style="width: 50px; height: 50px; float: left;">
               <img class="logoimg" src="images/related/youtube.png" style="width: 50px; height: 50px; float: left;">
               <img class="logoimg" src="images/related/users.png" style="width: 50px; height: 50px; float: left;">
            </div>
            <a href="<%=request.getContextPath() %>/views/common/main.jsp" class="github-corner" id="catloge">
               <svg width="200" height="200" viewBox="0 0 250 250" style="fill: yellow; color:black; position: fixed; top: 0; border: 0; right: 0; ">
                  <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                  <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path>
                  <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path>
               </svg>
            </a>   
         </section>

         <section class="section section--menu" id="Project">

            <h2 class="section__title">Project</h2>
            <span class="link-copy"></span>
<!-- 메뉴바 -->
            <!-- <nav class="menu menu--project">
               <ul class="menu__list"> 
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link">【프로젝트】</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Portfolio</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Clients</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">good</a></li>
               </ul>
            </nav> -->
<!-- 메뉴바 -->
         </section>
         <section class="section section--menu" id="Information">
            <h2 class="section__title">information</h2>
            <span class="link-copy"></span>
            <nav class="menu menu--information">
               <ul class="menu__list">
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link">【인재정보】</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Company News</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Support</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">good</a></li>
               </ul>
            </nav>
            
         </section>
         <section class="section section--menu" id="Method">
            <h2 class="section__title">use of method</h2>
            <span class="link-copy"></span>
            <nav class="menu menu--method">
               <ul class="menu__list">
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link">【이용방법】</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">About</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Solutions</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Blog</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Contact</a></li>
               </ul>
            </nav>
         </section>
         <section class="section section--menu" id="Baekjoon">
            <h2 class="section__title">baekjoon</h2>
            <span class="link-copy"></span>
            <nav class="menu menu--baekjoon">
               <ul class="menu__list">
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link">【baekjoon】</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Question</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Clients</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Shop</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">My blog</a></li>
               </ul>
            </nav>
            <p class="info">Let's go~! <a href="https://www.acmicpc.net/">baekjoon</a></p>
         </section>
         <section class="section section--menu" id="Page">
            <h2 class="section__title">My page</h2>
            <span class="link-copy"></span>
            <nav class="menu menu--page">
               <ul class="menu__list">
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link"><span class="menu__helper">【마이페이지】</span></a></li>
                  <li class="menu__item"><a href="#" class="menu__link"><span class="menu__helper">Portfolio</span></a></li>
                  <li class="menu__item"><a href="#" class="menu__link"><span class="menu__helper">Contact</span></a></li>
                  <li class="menu__item"><a href="#" class="menu__link"><span class="menu__helper">Question</span></a></li>
                  <li class="menu__item"><a href="#" class="menu__link"><span class="menu__helper">Contact</span></a></li>
               </ul>
            </nav>
            <p class="info">Let's go~! <a href="https://dictator512.tistory.com/">[My blog]</a></p>
            <p class="info"><a href="http://www.jobkorea.co.kr/SelfIntroduction/PassAssayIndex">자소서 </a>작성하기(아직 자소서는 안만들어 링크는 잡코리아로 걸어둠)</p>
         </section>         
         
         <section class="section section--menu" id="Yourpage">
            <h2 class="section__title">Your page</h2>
            <span class="link-copy"></span>
            
            <nav class="menu menu--yourpage">
            <nav class="menu menu--yourpage">
            <nav class="menu menu--yourpage">
            <nav class="menu menu--yourpage">
               <ul class="menu__list">
               <ul class="menu__list">
                  <li class="menu__item menu__item--current"><a href="#" class="menu__link">【무엇을 넣을까??】</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">Clients</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">good</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">good</a></li>
                  <li class="menu__item"><a href="#" class="menu__link">good</a></li>
               </ul>
            </nav>
            <p class="info">Let's go~! <a href="https://dictator512.tistory.com/">[Your blog]</a></p>
            <p class="info"><a href="http://www.jobkorea.co.kr/SelfIntroduction/PassAssayIndex">상대방 자소서</a>확인하기</p>
         </section>
         <section class="content content--related">
            <p>혹시 몰라 추가 하고 싶을때 좀더 추가할 자료를 링크로 걸어둠</p>
            <div class="content__wrap content__wrap--related">
               <a class="media-item" href="https://www.acmicpc.net/">
                  <img class="media-item__img" src="images/related/1.png">
                  <h3 class="media-item__title">[BAEKJOON]</h3>
               </a>
               <a class="media-item" href="http://www.baemin.com/">
                  <img class="media-item__img" src="images/related/2.png">
                  <h3 class="media-item__title">[배달의 민족]</h3>
               </a>
               <a class="media-item" href="http://tympanus.net/Development/TextStylesHoverEffects/">
                  <img class="media-item__img" src="images/related/LinkStylesHoverEffects.jpg">
                  <h3 class="media-item__title">[텍스트 스타일 및 호버 효과]</h3>
               </a>
               <a class="media-item" href="http://tympanus.net/Development/TextInputEffects/">
                  <img class="media-item__img" src="images/related/TextInputEffects.jpg">
                  <h3 class="media-item__title">[텍스트 입력 효과]</h3>
               </a>
               <a class="media-item" href="http://tympanus.net/Development/CreativeLinkEffects/">
                  <img class="media-item__img" src="images/related/CreativeLinkEffects.png">
                  <h3 class="media-item__title">[크리에이티브 링크 효과]</h3>
               </a>
               <a class="media-item" href="http://tympanus.net/Development/ButtonStylesInspiration/">
                  <img class="media-item__img" src="images/related/ButtonStylesInspiration.png">
                  <h3 class="media-item__title">[버튼 스타일 효과]</h3>
               </a>
            </div>
         </section>
      </div>
   </body>
</html>
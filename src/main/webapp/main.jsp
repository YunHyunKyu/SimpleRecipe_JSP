<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Recipe</title>
    <!-- reset -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="icon" href="./images/favicon.ico" type="image/x-icon">
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=East+Sea+Dokdo&family=Gugi&family=Jua&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/main.css">
    <!-- Swiper - 슬라이드 구현 API -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!-- Swiper -->
    <script defer src="./js/jquery-3.6.0.min.js"></script>
    <script defer src="./js/common.js"></script>
    <script defer src="./js/youtube.js"></script>
    <script defer src="./js/main.js"></script>
</head>
<body>
  <!-- 헤더 -->
  <header>
      <div class="topHeader">
        <div class="inner">
          <a href="main.jsp" class="logo">
            <img src="./images/logo.png" alt="logo">
            <h1><span>S</span>imple<span>R</span>ecipe</h1>
          </a>

          <ul class="sub-menu">
          <%
          	if(id != null) {
          %>
          	<li>
              <a><%=id %>님</a>
            </li>
            <li>
              <a href="./logout.jsp">Logout</a>
            </li>
          <%
          	} else {
          %>
            <li>
              <a href="./signin.jsp">Sign In</a>
            </li>
            <li>
              <a href="./signup.jsp">Sign Up</a>
            </li>
          
          <% 
          	} // if(id != null)
          %>
    	  </ul>
          <div class="search">
            <input type="text" placeholder="" />
            <div class="material-icons">search</div>
          </div>
        </div>
      </div>
  
      <div class="downHeader">
        <div class="inner">
          <ul class="main-menu">
            <li class="item">
              <p>종류</p>
              <ul>
                <li># 떡볶이</li>
                <li># 라면</li>
                <li># 매운맛</li>
                <li># 볶음밥</li>
                <li># 종류 더 보기</li>
              </ul>
            </li>
            <li class="item">
              <p>인기 레시피</p>
            </li>
            <li class="item">
              <p>편의점 레시피</p>
            </li>
            <li class="item">
              <p>레시피 요청</p>
            </li>
          </ul>
        </div>
      </div>
  </header>
  <!-- 헤더 -->

  <!-- 비쥬얼 -->
  <section class="visual">
    
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="./images/tteokbokki.png" alt="떡볶이" />
          <a href="#" class="btn">레시피 보기</a>
        </div>
        <div class="swiper-slide">
          <img src="./images/ramen.jpg" alt="라면" />
          <a href="#" class="btn">레시피 보기</a>
        </div>
        <div class="swiper-slide">
          <img src="./images/pasta.jpg" alt="파스타" />
          <a href="#" class="btn">레시피 보기</a>
        </div>
        <div class="swiper-slide">
          <img src="./images/curry.jpg" alt="카레" />
          <a href="#" class="btn">레시피 보기</a>
        </div>
        <div class="swiper-slide">
          <img src="./images/hammayoBowl.jpg" alt="햄마요덮밥" />
          <a href="#" class="btn">레시피 보기</a>
        </div>
      </div>
      
      <div class="swiper-prev">
        <div class="material-icons">arrow_back</div>
      </div>
      <div class="swiper-next">
        <div class="material-icons">arrow_forward</div>
      </div>
    </div>
  </section>

  <!-- <section class="mainVisual">
    <div class="container">
      <div class="wrapper">
        <div class="slider active">
          <img class="slider_image" src="./images/tteokbokki.png" alt="떡볶이">
        </div>

        <div class="slider">
          <img class="slider_image" src="./images/ramen.jpg" alt="라면">
        </div>

        <div class="slider">
          <img class="slider_image" src="./images/curry.jpg" alt="카레">
        </div>

        <div class="slider">
          <img class="slider_image" src="./images/hammayoBowl.jpg" alt="햄마요덮밥">
        </div>

        <div class="slider">
          <img class="slider_image" src="./images/pencake.jpg" alt="팬케이크">
        </div>
      </div>

      <div class="prevBtn">
        <div class="material-icons">arrow_back</div>
      </div>
      <div class="nextBtn">
        <div class="material-icons">arrow_forward</div>
      </div>

      <div class="recipe_btn">
        <a href="#" class="btn">레시피 보기</a>
      </div>
  </div>
  </section> -->

  <!-- 비쥬얼 -->

  <!-- 콘텐츠 -->
  <section class="contents">
    <div class="inner">
      <h2>추천 레시피</h2>
      <p>레시피로 최고의 순간을 만들어 보세요</p>
      <div class="contents__Area">
        <div class="content__up">

          <div class="item big">
            <a href="#" class="itemArea">
              <img src="./images/pencake.jpg" alt="팬케이크">
            </a>
            <p class="itemDesc">#펜 #치즈 #달콤 <br />펜케이크</p>
          </div>

          <div class="item">
            <a href="#" class="itemArea">
              <img src="./images/Sandwich.jpg" alt="센드위치">
            </a>
            <p class="itemDesc">#옥수수콘 #토마토 #빵 <br />센드위치</p>
          </div>

          <div class="item">
            <a href="#" class="itemArea">
              <img src="./images/Shakshuka.jpg" alt="카레 샥슈카">
            </a>
            <p class="itemDesc">#3일숙성 #카레 #계란 <br />카레 샥슈카</p>
          </div>
        </div>
        <div class="content__down">

          <div class="item big">
            <a href="#" class="itemArea">
              <img src="./images/hammayoBowl.jpg" alt="햄마요덮밥">
            </a>
            <p class="itemDesc">#햄 #마요 #덮밥 <br />햄마요덮밥</p>
          </div>

          <div class="item">
            <a href="#" class="itemArea">
              <img src="./images/curry.jpg" alt="카레">
            </a>
            <p class="itemDesc">#카레 #쇠고기<br />카레 비프 스튜</p>
          </div>

          <div class="item">
            <a href="#" class="itemArea">
              <img src="./images/ball.jpg" alt="완자꼬치">
            </a>
            <p class="itemDesc">#캠핑 #만두 #꼬치 <br />완자꼬치</p>
          </div>
          
        </div>
      </div>
    </div>
  </section>
  <!-- 콘텐츠 -->

  <!-- YOUTUBE VIDEO -->
  <section class="youtube">
    <div class="youtube__area">
      <div id="player"></div>
    </div>
    <div class="youtube__cover"></div>
  </section>
  <!-- YOUTUBE VIDEO -->

  <!-- Best Recipe -->
  <section class="bestRecipe">
    <div class="inner">
      <h2>인기레시피</h2>
      <p>인기 레시피를 소개합니다.</p>
      <div class="recipe__Area">

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/pencake.jpg" alt="팬케이크">
          </a>
          <p class="itemDesc">#펜 #치즈 #달콤 <br />펜케이크</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/curry.jpg" alt="카레">
          </a>
          <p class="itemDesc">#카레 #쇠고기<br />카레 비프 스튜</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/hammayoBowl.jpg" alt="햄마요덮밥">
          </a>
          <p class="itemDesc">#햄 #마요 #덮밥 <br />햄마요덮밥</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/pasta.jpg" alt="크림파스타">
          </a>
          <p class="itemDesc">#파스타 #크림 #새우 #베이컨 <br />크림파스타</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/tteokbokki.png" alt="떡볶이">
          </a>
          <p class="itemDesc">#달콤 #매움 #떡 <br />떡볶이</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/ramen.jpg" alt="라면">
          </a>
          <p class="itemDesc">#라면 #맛있게 <br />라면</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/Sandwich.jpg" alt="센드위치">
          </a>
          <p class="itemDesc">#콘 #빵 #간단 <br />센드위치</p>
        </div>

        <div class="item">
          <a href="#" class="itemArea">
            <img src="./images/ball.jpg" alt="완자꼬치">
          </a>
          <p class="itemDesc">#캠핑 #만두 #꼬치 <br />완자꼬치</p>
        </div>

      </div>
    </div>
  </section>
  <!-- best Recipe 끝 -->

  <!-- footer -->
  <footer>
    <div class="inner">
      <ul class="menu">
        <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
        <li><a href="javascript:void(0)">영상정보처리기기 운영관리 방침</a></li>
        <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
      </ul>
      <div class="footer__info">
        <p class="compeny">(주) S R</p>
        <p class="address">경기도 성남시 수정구 수정로</p>
        <p class="copyright">
        Copyright &copy; ottogi co.,Ltd All Rights Reserved.
      </p>
      </div>
    </div>
  </footer>
  <!-- footer -->

  </body>

  </html>
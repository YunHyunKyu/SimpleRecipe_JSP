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
    <link rel="favicon" href="./images/favicon.ico">
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=East+Sea+Dokdo&family=Gugi&family=Jua&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/category.css">

    <script defer src="./js/jquery-3.6.0.min.js"></script>
    <script defer src="./js/common.js"></script>
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

<!-- 카테고리 페이지 -->

  <section class="category">
    <div class="inner">
      <ul>
        <li>종류</li>
        <li>떡볶이</li>
        <li>라면</li>
        <li>볶음밥</li>
        <li>샐러드</li>
        <li>빵</li>
        <li>기타</li>
      </ul>

      <div class="contents">
        
        <div class="content__info">
          <p>검색 결과 <span>24</span>건 조회</p>
          <p>최신순</p>
          <p>조회순</p>
        </div>

        <div class="content__area">
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
    </div>
  </section>

<!-- 카테고리 페이지 끝 -->

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
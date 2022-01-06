<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="./css/signin.css">

    <script defer src="./js/jquery-3.6.0.min.js"></script>
    <script defer src="./js/common.js"></script>
</head>
<body>
    <!-- 헤더 -->
  <header>
    <div class="topHeader">
      <div class="inner">
        <a href="main.html" class="logo">
          <img src="./images/logo.png" alt="logo">
          <h1><span>S</span>imple<span>R</span>ecipe</h1>
        </a>

        <ul class="sub-menu">
          <li>
            <a href="./signin.html">Sign In</a>
          </li>
          <li>
            <a href="./signup.html">Sign Up</a>
          </li>
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

<!-- 로그인 페이지 -->

  <section class="signin">
    <h1>로그인</h1>
    <div class="signin__card">
      <h2>
        <strong>Welcome!</strong> SimpleRecipe에 오신 것을 환영합니다.
      </h2>
      <form action="signinProc.jsp">
        <input name="id" type="text" placeholder="아이디를 입력하세요." />
        <input name="pw" type="password" placeholder="비밀번호를 입력하세요." />
        <input type="submit" value="로그인" />
        <p>
          * 비밀번호를 타 사이트와 같이 사용할 경우 도용 위험이 있으니,<br />
          정기적으로 비밀번호를 변경하세요!
        </p>
      </form>
      <div class="actions">
        <a href="./signup.jsp">회원가입</a>
        <a href="javascript:void(0)">아이디 찾기</a>
        <a href="javascript:void(0)">비밀번호 찾기</a>
      </div>
    </div>
  </section>

<!-- 로그인 페이지 끝 -->

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
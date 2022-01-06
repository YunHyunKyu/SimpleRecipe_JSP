<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="idchk" class="bean.MemberMgr" />

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
  <link
    href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=East+Sea+Dokdo&family=Gugi&family=Jua&display=swap"
    rel="stylesheet">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/signup.css">

  <script defer src="./js/jquery-3.6.0.min.js"></script>
  <script defer src="./js/common.js"></script>
  <script defer src="./js/signup.js"></script>
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

  <!-- 회원가입 페이지 -->

  <section class="sign_up">
    <form class="accForm" action="signupProc.jsp">
      <div class="signup__Area">
        <h2>회원가입</h2>
        <p>계정이 있는 경우 <a href="#">로그인</a>해주세요</p>
        <p>가입을 하면 <a href="#">이용약관, 개인정보 취급 방침 및 개인정보3자제공</a>에 동의하게 됩니다.</p>
        <p>가입 후 아이디는 변경할 수 없습니다.</p>
        <div class="id">
          <h3>아이디</h3>
          <input name="id" type="text" />
          <a class="btn idchk">중복확인</a>
          <p class="idChkDesc"></p>
        </div>
        <div class="pwArea">
          <div class="pw">
            <h3>비밀번호</h3>
            <input name="pw" type="password" />
          </div>
          <div class="pwcheck">
            <h3>비밀번호 (확인)</h3>
            <input type="password" />
          </div>
        </div>
        <div class="job">
          <h3>직업</h3>
          <input name="job" type="text" />
        </div>
        <div class="email">
          <h3>이메일</h3>
          <input name="email" type="text" />
        </div>
        <div class="robot">
          <div class="checkArea">
            <input class="robotCheck" type="checkbox" />
            <p class="checkDesc"> 로봇이 아닙니다</p>
            <img src="./images/robot.png" alt="마크">
            <p class="checkPrivacy">개인정보 보호·약관</p>
          </div>
        </div>
        <div class="agree">
          <div class="agreeArea">
            <input name="addchk" type="checkbox" value="1" />
            <p>오늘의 레시피 및 광고 이메일 받기</p>
          </div>
        </div>

        <a href="#" class="btn account">회원가입</a>
      </div>
    </form>
  </section>

  <!-- 회원가입 페이지 끝 -->

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
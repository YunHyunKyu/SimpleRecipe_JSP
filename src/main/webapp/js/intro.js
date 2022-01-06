// back 클래스 찾기
const back = document.querySelector('.back');

// 마우스 오버와 아웃을 구분할 boolean 변수
let isCheck = false;

// back 공간에 마우스가 올라왔을 때
back.addEventListener('mouseover', function() {
    isCheck = true;
});

// back 공간에 마우스가 떨어졌을 때
back.addEventListener('mouseout', function() {
    isCheck = false;
});

// 글자가 나타날 공간 - h1 태그
const title = document.querySelector('.introArea h1');

let idx = 0;
let strTitle = "";
const arrTitle = ['S', 'I', 'M', 'P', 'L', 'E', ' R', 'E', 'C', 'I', 'P', 'E'];

// 글자 나타나게
const interval = setInterval(() => {
    if(isCheck) {
        strTitle += arrTitle[idx];
        idx++;

        if(idx == arrTitle.length) {
            stopInterval();
        }
    }
    else {
        idx = 0;
        strTitle = ""
    }
    
    title.innerHTML = strTitle;
}, 200);

// 인터벌 종료 후 페이지 이동 함수
function stopInterval() {
    clearInterval(interval);
    setTimeout(() => {
        location.replace("./main.jsp");    
    }, 1000);
}
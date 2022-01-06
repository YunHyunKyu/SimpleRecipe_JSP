// 스와이퍼
// new Swiper(선택자, 옵션)

new Swiper('.visual .swiper-container', {
    direction: 'horizontal',
    slidesPerView: 3,       // 한번에 보여줄 슬라이드 개수
    spaceBetween: 10,       // 슬라이드 사이 여백
    centeredSlides: true,   // 1번 슬라이드가 
    loop: true,
    autoplay: {
        display: 5000
    },
    pgination: {
        el: '.visual .swiper-pagination', // 페이지 번호 요소 선택자
        clickable : true, // 사용자의 페이지 번호 요소 제어 여부
    },
    navigation: {
        prevEl: '.visual .swiper-prev',
        nextEl: '.visual .swiper-next',
    }
});

// 스와이퍼 안쓴 버전 (슬라이드)
// var index = 1;
// $('.mainVisual .wrapper').css('left', -700);
// $('.mainVisual .slider').eq(0).addClass('active');

// $('.wrapper').append($('.slider').eq(0).clone());
// $('.wrapper').append($('.slider').eq(1).clone());

// $('.wrapper').prepend($('.slider').eq(-3).clone());
// $('.wrapper').prepend($('.slider').eq(-4).clone());

// $('.mainVisual .prevBtn').click(() => {
//     index--;
//     if(index > 1) {
//         moveSlider(index);
//     } else {
//         $('.mainVisual .wrapper').css('left', -4200);
//         index = 5;
//         moveSlider(index);
//     }
    
// });

// $('.mainVisual .nextBtn').click(() => {
//     index++;
//     if(index < 5) {
//         moveSlider(index);
//     } else {
//         $('.mainVisual .wrapper').css('left', 0);
//         index = 1;
//         moveSlider(index);
//     }
// });

// function moveSlider(index) {
//     $('.mainVisual .wrapper').animate({
//         left: -(index * 700),
//     });

//     $('.mainVisual .slider').removeClass('active');
//     $('.mainVisual .slider').eq(index+1).addClass('active');
// }

// var press = false;
// var posLeft;

// $('.mainVisual .container').on({
//     mousedown: function(event) {
//         press = true;
//         posLeft = event.clientX;
//     },
//     mouseup: function() {
//         press = false;
//         dragSlide();
//     },
//     mouseleave: function() {
//         press = false;
//         dragSlide();
//     },
//     mousemove: function(event) {
//         if(press == true) {
//             value = event.clientX;
//             var pos = (posLeft - value) * 0.8;
//             var wLeft = $('.mainVisual .wrapper').css('left').replace('px', '');
//             $('.mainVisual .wrapper').css('left', wLeft-pos);
//             posLeft = event.clientX;
//         }
//     }
// });

// -(index * 700)
// 커지는게 왼쪽
// 작아지는게 오른쪽
// function dragSlide() {
//     var nowLeft = -(index * 700);
//     var wLeft = $('.mainVisual .wrapper').css('left').replace('px', '');
//     if(nowLeft > wLeft) {
//         console.log(Math.abs(nowLeft-wLeft));
//         if(Math.abs(nowLeft-wLeft) > 350) {
//             index++;
//             if(index < 5) {
//                 moveSlider(index);
//             } else {
//                 $('.mainVisual .wrapper').css('left', 0);
//                 index = 1;
//                 moveSlider(index);
//             }
//         }
//     } else {
//         console.log(Math.abs(wLeft-nowLeft));
//         if(Math.abs(wLeft-nowLeft) > 350) {
//             index--;
//             if(index > 1) {
//                 moveSlider(index);
//             } else {
//                 $('.mainVisual .wrapper').css('left', -4200);
//                 index = 5;
//                 moveSlider(index);
//             }
//         } 
//     }
// }
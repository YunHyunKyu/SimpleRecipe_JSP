$('.btn.idchk').click(() => {
    const id = $('.id input').val();

    if(id == "") {
        alert("아이디를 입력해주세요.");
        return;
    }

    var url = "idCheck.jsp?id=" + id;
    window.open(url, "IDCheck", 'width=300,height=150,left=800,top=150');
});

// 회원가입 버튼 클릭
$('.btn.account').click(()=> {
    accountCheck();
});

function accountCheck() {
    const id = $('.id input');
    if(id.val() == "") {
        id.focus();
        alert("아이디를 입력해주세요.");
        return;
    }

    const pw = $('.pw input');
    if(pw.val() == "") {
        pw.focus();
        alert("비밀번호를 입력해주세요.");
        return;
    }

    const pwchk = $('.pwcheck input');
    if(pwchk.val() == "") {
        pwchk.focus();
        alert("비밀번호 확인을 입력해주세요.");
        return;
    }

    if(pw.val() !== pwchk.val()) {
        pw.html = "";
        pwchk.html = "";
        pw.focus();
        alert("비밀번호와 비밀번호 확인이 다릅니다.");
        return;
    }

    const job = $('.job input');
    if(job.val() == "") {
        job.focus();
        alert("직업을 입력해주세요.(아무거나)");
        return;
    }

    const email = $('.email input');
    if(email.val() == "") {
        email.focus();
        alert("이메일을 입력해주세요.");
        return;
    }

    const robotCheck = $('.robotCheck').prop("checked");
    if(robotCheck == false) {
        alert("개인정보 보호약관을 체크해주세요.");
        return;
    }

    $('.accForm').submit();
}
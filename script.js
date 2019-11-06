//메뉴,footer불러오기
$(document).ready(function(){
            $("#M_F").load("M_F.jsp");
});
//메인페이지 디자인
$(document).ready(function () {
    $("#img_mid").css("right", "15%");
    setTimeout(function () {
        $("#mid_std").css("top", "287px");
    }, 1000);
    setTimeout(function () {
        $("#mid_1").css("right", "16%");
    }, 2000);
    setTimeout(function () {
        $("#mid_2").css("right", "16%");
    }, 2500);
}); //메인페이지 디자인 끝
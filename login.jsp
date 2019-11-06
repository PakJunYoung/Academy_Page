<%@page language ="java" contentType ="text/html; charset=utf-8" pageEncoding ="utf-8"%>
<%@page import ="java.sql.*"%>
<!DOCTYPE html >
<html lang="ko">

<head>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="script.js"></script>
    <meta charset="UTF-8">
    <title>Login </title>
</head>

<body>
    <div id="M_F"></div>
    <div id="qweqwe">
        <div id="div_login">
            <img src="gipseng-logo.png" id="img_Login">
            <form action="log_ch.jsp" method="post">
                <label class="lbl_login">아이디 </label>
                <br>
                <input type="av-text" name="txt_id" class="txt_login">
                <br>
                <label class="lbl_login">비밀번호 </label>
                <br>
                <input type="password" name="txt_pwd" class="txt_login">
                <br>
                <button type="submit" value="Log In" id="btn_login">Log In </button>
            </form>
            <div id="id_search">
                <a href="#" id="id_guied" class="id_a">아이디 발급 안내 </a> |
                <a href="#" id="find_idpw" class="id_a">아이디/비밀번호 찾기 </a>
            </div>
        </div>
    </div>
</body>

</html>
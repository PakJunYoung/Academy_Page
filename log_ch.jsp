<%@page contentType ="text/html;charset=utf-8"%>
<%@page import ="java.sql.*"%>
<%
String getID =request .getParameter ("txt_id");
String getPWD =request .getParameter ("txt_pwd");
String driverName ="com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/test";
String id = "root";
String pwd ="201444053";
Connection conn =null ; // DB 접속 클래스
Statement stmt =null ; // 접속 후 질의문 실행 클래스
ResultSet rs = null ; // 질의문 샐행 결과 값 클래스
Boolean check_idpw = false ;
String check_type ="";
try {
Class .forName (driverName); 
//[2]데이터베이스 연결 
 conn = DriverManager .getConnection (url,id,pwd);
//[3]table불러오기
String sql = "select * from login_test;";
 stmt = conn .createStatement (); //DB레코드 한줄 생성
 rs = stmt .executeQuery (sql);
while (rs .next ()){
if (getID .equals (rs .getString (2 )) &&getPWD .equals (rs .getString (3 )) ){
 check_idpw=true ;
if ("p".equals (rs .getString (5 ))){
 check_type = "p";
 }
if ("s".equals (rs .getString (5 ))){
 check_type = "s";
 }
if ("k".equals (rs .getString (5 ))){
 check_type = "k";
 }
break ;
 }
 }
if (check_idpw){
if (check_type .equals ("p")){
out .println ("<script>");
out .println ("location.href='parents.jsp';");
out .println ("</script>");
 }
if (check_type .equals ("s")){
out .println ("<script>");
out .println ("location.href='student.jsp';");
out .println ("</script>");
 }
if (check_type .equals ("k")){
out .println ("<script>");
out .println ("location.href='manager.jsp';");
out .println ("</script>");
 }
 }
if (!check_idpw){
out .println ("<script>");
out .println ("location.href='login.jsp';");
out .println ("alert('입력하신 아이디나 패스워드가 존재하지않습니다.'); </script>");
 }
 }catch (Exception e ){
out .println ("Arise the Error!<br>");
out .println (e .toString ());
return ;
 }finally {
//[Final]데이타베이스 연결 해제
conn .close ();
 } 
%>
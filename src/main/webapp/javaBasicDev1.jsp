<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <p>
 Java基礎 - 演習問題1(発展)
 ケーキの金額：\500<br>
 コーヒーの金額：\350<br>
 所持金：\3200
 </p>

 <%
 	out.println("ケーキを3つとコーヒーを2つ購入する場合の金額は、\\"+ (500*3+350*2)+"です");
 	out.println("<br>");
 	out.println("ケーキを2つとコーヒーを3つ買った場合、所持金が\\"+ (3200-(500*3+350*2))+"残ります");
 	out.println("<br>");
	out.println("所持金でケーキとコーヒーを"+ (3200/(500+350))+"セット購入できます");
	out.println("<br>");
 	out.println("所持金でケーキを変えるだけ買った後に\\1000増えた場合の金額は、\\"+ (3200-3200/500*500+1000)+"です");
 %>
</body>
</html>
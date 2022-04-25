<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String bloodType = request.getParameter("bloodType");

	int ages = Integer.parseInt(age);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p>
    <%
    if (name.isEmpty()){
    	name = "名無し";
    	out.println("こんにちは"+ name +"さん");
    }else if(name.equals("ロボット")){
    	out.print("こんにちは、ロボットさん！");
    	out.println("私と同じ名前ですね！");
    }else{
    	out.print("こんにちは、"+ name +"さん！");
    }
    %>
    </p>
    <p>
    <%
    if (ages == 20){
    	out.println("私と同じ年なんですね！");
    }else if(ages> 20){
    	int ageDifOlder = ages - 20;
    	out.println("私よりも"+ageDifOlder+"歳年上ですね！");
    }else{
    	int ageDifYounger = 20 -ages;
    	out.println("私よりも"+ ageDifYounger +"歳年下ですね！");
    }
  	%>
  </p>
    <p>
    <%
    switch(bloodType){
    case "typeA": 
    	out.println("私もA型です！");
    	break;
    case "typeB": 
    	out.println("B型の人と話すのは初めてです。");
    	break;
    case "typeAB": 
    	out.println("私の母がAB型です。");
    	break;
    case "typeO": 
    	out.println("私の父がO型です");
    	break;
    }
    %>
    </p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>
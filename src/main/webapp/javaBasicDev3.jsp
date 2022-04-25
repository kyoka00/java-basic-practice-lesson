<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
	String num1 =request.getParameter("num1");
	String num2 =request.getParameter("num2");
	String operator =request.getParameter("operator");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <%
    
   if (num1== null && num2 == null){
	   out.println("数値を入力してください");
   }
    else if (num1.isEmpty()&& num2.isEmpty() ){
    	out.println("数値が両方とも未入力です");
    	
    }else if(num1.isEmpty() || num2.isEmpty() ){
    	out.println("数値を入力してください");
    	
    }else{
    	
    	int nums1 = Integer.parseInt(num1);
		int nums2 = Integer.parseInt(num2);
		
		int answer= 0;
	    double answerD =0;
	    
   		 switch(operator){
		    case "add":
		    	answer = nums1 + nums2;
		    	out.println (nums1 +"＋"+ nums2 +"=" + answer);
		    	break;
		    
		    case "sub":
		    	answer = nums1 - nums2;
		    	out.println (nums1 +"-"+ nums2 +"=" + answer);
		    	break;
		    	
		    case "mul":
		    	answer = nums1 * nums2;
		    	out.println (nums1 +"×"+ nums2 +"=" + answer);
		    	break;
		    	
		    case "div":
		    	answerD = (double)nums1 / nums2; //小数点以下も表示される
		    	out.println (nums1 +"÷"+ nums2 +"=" + answerD);
		    	break;
		    default:
		    	out.println("エラーです");
		    }
    }
    
    %>

  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>
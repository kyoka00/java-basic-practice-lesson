<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");



    // 入力値を取得
    String[] product = request.getParameterValues("product"); 
    
    // セッションから現在の所持金を取得
    int money = (int)session.getAttribute("money"); 

    // 表示用変数定義
    String msg = ""; // 購入メッセージ
    String result = ""; // 購入した商品
    int sumAmount = 0; // 購入した金額の合計
    int newMoney = money; // 購入後の所持金

    // 商品が選択されているか判断
    if (product == null || product.length == 0) {
		msg=("商品が選択されていません。");
    } else {
    	
    	 
      	for (int i = 0; i < product.length; i++) {

		switch (product[i]) {
			case "tv":
				sumAmount += 20000;
				result += "テレビ" + "<br>";
				break;
			case "refrigerator":
				sumAmount += 30000;
				result += "冷蔵庫" + "<br>";
				break;
			case "microWave":
				sumAmount += 10000;
				result += "電子レンジ" + "<br>";
				break;
			case "washingMachine":
				sumAmount += 50000;
				result += "洗濯機" + "<br>";
				break;
		}
	}
		if (money >= sumAmount) {
			newMoney -= sumAmount;

		} else {
			msg = ("所持金が足りません<br>");
		}
			session.setAttribute("money", newMoney);


	}
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題4(発展)</title>
</head>
<body>
	<h1>Java基礎 - 演習問題4(発展)</h1>

	<h2>購入結果</h2>
	<h3><%=msg%></h3>
	<p>
		購入前の所持金：<%=money%><br> 購入後の所持金：<%=newMoney%></p>
	<p>
		【購入商品】<br>
		<%=result%>
	</p>

	<a href="javaBasicDev4_input.jsp">戻る</a>
</body>
</html>
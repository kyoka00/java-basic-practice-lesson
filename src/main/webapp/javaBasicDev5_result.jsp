<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String product1 = request.getParameter("product1");
	String product2 = request.getParameter("product2");
	String amount1 = request.getParameter("amount1");
	String amount2 = request.getParameter("amount2");
	String rank = request.getParameter("rank");

    // 数値に変換
	if (ParamUtil.isNullOrEmpty(rank)){
		rank="0";
	}
    int ranks = Integer.parseInt(rank);
    
    
    if (ParamUtil.isNullOrEmpty(amount1) == true){
    	amount1 = "0";
    }
    int amountNo1 = Integer.parseInt(amount1);
    
    
    if (ParamUtil.isNullOrEmpty(amount2) == true){
    	amount2 = "0";
    }
    int amountNo2 = Integer.parseInt(amount2);
    
    
    // ポイントを定義
    int point1 = 0;
    int point2 =0;
	
    // メソッドを呼んでポイントを取得
	if (ranks==0){
		point1 =ParamUtil.getPoint(amountNo1);
		point2 = ParamUtil.getPoint(amountNo2);
	}else {
		point1 =ParamUtil.getPoint(amountNo1,ranks);
		point2 =ParamUtil.getPoint(amountNo2, ranks);
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= product1 %></td>
      <td class="right"><%= amountNo1 %></td>
      <td class="right"><%= point1 %></td>
    </tr>
    <tr>
      <td><%= product2 %></td>
      <td class="right"><%= amountNo2 %></td>
      <td class="right"><%= point2 %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>
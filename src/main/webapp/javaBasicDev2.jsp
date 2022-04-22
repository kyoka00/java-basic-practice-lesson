<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
  			border-collapse: collapse;
		 }
table th, table td {
  			border: solid 1px black;
  			padding: 5px;
			text-align:center;
					}
</style>
<body>
<h1>Java基礎-演習問題２（発展）</h1>
<h2>売上一覧</h2>

<%
	int month[]= {1,2,3};
	String sumTitle ="合計";
	String productClass[]={"食品","飲料"};
	int sales[][]={
			{352000, 278000},
			{442000, 342600},
			{520000, 380500}
	};
	
%>
<table border=1>

<tr>
<td></td>
<td>
	<%out.println(month[0]+"月");%>
</td>
<td>
	<%out.println(month[1]+"月");%>
</td>
<td>
	<%out.println(month[2]+"月");%>
</td>
<td>
	<%out.println(sumTitle);%>
</td>
</tr>

<tr>
<td>
	<%out.println(productClass[0]);%>
</td>
<td>
	<%out.println(sales[0][0]);%>
</td>
<td>
	<%out.println(sales[1][0]);%>
</td>
<td>
	<%out.println(sales[2][0]);%>
</td>
<td>
	<%out.println(sales[0][0] + sales[1][0] +sales[2][0]);%>
</td>
</tr>

<tr>
<td>
	<%out.println(productClass[1]);%>
</td>
<td>
	<%out.println(sales[0][1]);%>
</td>
<td>
	<%out.println(sales[1][1]);%>
</td>
<td>
	<%out.println(sales[2][1]);%>
</td>
<td>
	<%out.println(sales[0][1] + sales[1][1] +sales[2][1]);%>
</td>
</tr>

<tr>
<td><%out.println(sumTitle);%>
</td>
<td>
	<%out.println(sales[0][0] + sales[0][1]);%>
</td>
<td>
	<%out.println(sales[1][0] + sales[1][1]);%>
</td>
<td>
	<%out.println(sales[2][0] + sales[2][1] );%>
</td>
<td>
	<%
	int allSum =sales[0][1] + sales[1][1] +sales[2][1]+ sales[0][0] + sales[1][0] +sales[2][0];
	out.println(allSum);
	%>
</td>
</tr>

</table>

</body>
</html>
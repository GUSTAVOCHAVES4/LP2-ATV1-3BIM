<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<%!
			public Integer[] tabuada(Integer numero){
				Integer[] tabuada = new Integer[10];
				
				for(int i = 1; i <= 10; ++i){
					tabuada[i - 1] = numero * i;
				}
				
				return tabuada;
			}
		%>
		
		<%
			Integer tabuadas[] = {8, 10, 12};
			for(Integer i : tabuadas){
		%>
		<table border="1">
		<%
				for(int j = 1; j <= 10; ++j){
					
					out.println("<tr> <td>" + i + "</td> <td> X </td> <td>" + j + "</td> <td> = </td> <td>" + tabuada(i)[j-1] + "</td>");
				}
			
		%>
		</table>
		<br>
		<%
			}
		%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.time.LocalDate" %>
    <%@ page import="java.time.format.DateTimeFormatter" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercício 2</title>
</head>
<body>
	<table border="1">
		<tr>
			<%
				for(Integer i = 1; i <= 45; ++i) {
					LocalDate data = LocalDate.now();
					data = data.minusDays(i);
					if(data.getDayOfMonth() % 2 != 0)
						out.println("<td>" + data.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) + "</td>");
				}
			%>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
		public Integer somaMaiorMenor(ArrayList<Integer> array) {
			if(array.size() == 0) return 0;
			else if(array.size() == 1) return array.get(0);
			else {
				Integer maior = array.get(0);
				Integer menor = array.get(0);
				for(Integer numero : array) {
					if(numero > maior) maior = numero;
					if(numero < menor) menor = numero;
				}
				return maior + menor;
			}
		}
	%>
	
	<%
		ArrayList<Integer> array = new ArrayList<Integer>();
		array.add(4);
		array.add(1);
		array.add(9);
		array.add(3);
		array.add(7);
		array.add(6);
		
		out.println(somaMaiorMenor(array));
	%>
</body>
</html>
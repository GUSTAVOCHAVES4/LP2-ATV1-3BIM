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
		public Integer vogais(String texto){
			Integer contar = 0;
			texto = texto.toLowerCase();
			texto = texto.replaceAll(" ", "");
		
			for(Integer i = 0; i < texto.length(); i++){
				char c = texto.charAt(i);
				if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') contar++;
			}
			
			return contar;
		}
	
		public Integer consoantes(String texto){
			Integer contar = 0;
			texto = texto.toLowerCase();
			texto = texto.replaceAll(" ", "");
		
			for(Integer i = 0; i < texto.length(); i++){
				char c = texto.charAt(i);
				if(c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u') contar++;
			}
			
			return contar;
		}
	%>
	
	<%
		String texto = "";
	
		out.println("Consoantes:" + consoantes(texto) + "Vogais:" + vogais(texto));
	%>
</body>
</html>
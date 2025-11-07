<%@page import="utils.ConectaDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post">
    <button type="submit" name="acao" value="testarConexao">Testar Conexão</button>
</form>

<%
    String acao = request.getParameter("acao");
    if ("testarConexao".equals(acao)) {
        try {
            if (ConectaDB.getConexao() != null) {
                out.print("<p style='color:green'>CONECTADO</p>");
            }
        } catch (Exception e) {
            out.print("<p style='color:red'>" + e.getMessage() + "</p>");
        }
    }
    %>
</body>
</html>
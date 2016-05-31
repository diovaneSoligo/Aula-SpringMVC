<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
	<h1>CLIENTE FORMULÁRIO</h1>
	
	<form action="adicionarClientes">
	
		<label for="nome">Nome:</label>
		<input type="text" name="nome" id="nome" required><br>
		
		<label for="nome">Rua:</label>
		<input type="text" name="ruaNroComp" id="ruaNroComp"><br>
		
		<label for="nome">bairro:</label>
		<input type="text" name="bairro" id="bairro"><br>
		
		<label for="nome">cidade:</label>
		<input type="text" name="cidade" id="cidade"><br>
	
		<input type="submit" value="cadastrar">
	</form>
	
	<br><br>
	<h2>LISTA DE CLIENTES</h2>
	
<table>	
 <thead>
  <tr>
     <th>Nome</th>
     <th>Endereço</th>
  </tr>
 </thead>
 <tfoot>
  <tr>
     <td>Nome</td>
     <td>Endereço</td>
  </tr>
 </tfoot>
 <tbody>
 
 <c:forEach var="cliente" items="${clientes}">
  <tr>
  
     <td>${cliente.nome}</td>
     <td>${cliente.bairro}</td>
     
  </tr>
  </c:forEach> 
  
 </tbody>
</table>
	
	
	
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
    <%@page import="model.Producto" %>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
 
  
    
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de productos</title>
</head>
<body bgcolor="#c5dec9">
<h1  align="center">Listado de producto registrados BD</h1>

<h2 align="center">
<a href="FormRegistrarCliente.jsp" style="text-decoration: none;color:blue;">Registrar Cliente</a>
</h2>
<table border="2" align="center">

<tr>
<td>Nombre</td>
<td>descripcion</td>
<td>estado</td>
<td>precio</td>
<td>precio compra </td>
<td colspan="2" align="center">Acciones</td>
</tr>

<%
List<Producto> listarProductos=(List<Producto>)request.getAttribute("listadodeproductos");
//aplicamos una condicion..
if(listarProductos!=null){
	//aplicamos un bucle for..
	for(Producto lis:listarProductos){
		%>
		<tr>
		<td><%=lis.getNombre() %></td>
		<td><%=lis.getDecripcion() %></td>
		<td><%=lis.getEstado() %></td>
		<td><%=lis.getPrecio() %></td>
		<td><%=lis.getPreciocompra() %></td>
		<td><a href="">Eliminar</a></td>
	    <td><a href="ControladorCliente?accion=Modificar&cod=<%=lis.getIdproducto()%>">Actualizar</a></td>
		
		</tr>
		
		
	<%	
	}   //fin del bucle for...
	%>
	<%
}  //fin de la condicion ...

%>
</table>
</body>
</html>
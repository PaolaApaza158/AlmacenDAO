<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <br>
            <div class="border border-black">
                SEGUNDO PARCIAL TEM-742 <br>
                Nombre: Paola Alejandra Apaza Quispe<br>
                Carnet: 9234217 LP
            </div>
            <br>
        </center>
        <h1><center><b>Gestión de productos</b></center></h1>
        <p><a href="Inicio?action=add" class="btn btn-success">Nuevo Producto</a></p>

        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>DESCRIPCIÓN</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}" class="btn btn-info">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return (confirm('¿Está seguro/a?'))" class="btn btn-danger mb-3">Eliminar</a></td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>

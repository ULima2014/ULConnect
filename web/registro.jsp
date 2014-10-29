<%-- 
    Document   : registro
    Created on : Oct 21, 2014, 8:03:51 AM
    Author     : profw31
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form method="POST" action="GuardarUsuarioServlet">
            <p>Nombre</p>
            <p><input type="text" name="nombre" id="nombre" /></p>
            <p>Password</p>
            <p><input type="password" name="password" id="password" /></p>
            <p>Perfil</p>
            <p>
                <select name="perfiles">
                    <c:forEach var="perfil" items="${perfiles}">
                        <option value="${perfil.id}">${perfil.nombre}</option>
                    </c:forEach>
                </select>
            </p>
            <p>Codigo</p>
            <p><input type="text" name="codigo" id="codigo" /></p>
            <p>
                <input type="submit" value="Guardar" />
            </p>
        </form>
    </body>
</html>

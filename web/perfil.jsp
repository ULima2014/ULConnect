
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil</title>
        <c:set value="${sessionScope.u}" var="usuario" scope="session"/>
        <c:set value="${sessionScope.p}" var="perfiles" scope="session"/>
    </head>
    <body>
        
        <div style="margin-right: 30px;float:  left">
            <center><h2>UL Connect</h2>
            
            <p><img src="${usuario.codigo}.jpg" style="height: 100px; width: 100px"></p>
            
            <h4>${usuario.nombre}</h4>
            </center>
            <p> <a href="perfil.jsp">Mi Perfil</a> </p>
            <p> <a href="AmigosServlet">Mis Amigos</a> </p>
        </div>
            
        <div style="float: left">
            <h2>Mi Perfil</h2>
            <form method="POST" action="ActualizarServlet">
                <p>Nombre</p>
                <p><input type="text" name="nombre" id="nombre" value="${usuario.nombre}"></p>
                <p>Password</p>
                <p><input type="text" name="password" id="password" value="${usuario.password}"></p>
                <p>Perfil</p>
                <p>
                <select name="perfiles">
                    <c:forEach var="perfil" items="${perfiles}">
                        <option value="${perfil.id}">${perfil.nombre}</option>
                    </c:forEach>
                </select>
            </p>
                <input type="submit" value="Guardar">
            </form>
        </div>
                <h3>
                    ${msg}
                </h3>
    </body>
</html>

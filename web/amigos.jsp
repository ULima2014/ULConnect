
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mis Amigos</title>
        <c:set value="${sessionScope.u}" var="usuario" scope="session"/>
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
                <c:forEach var="amigo" items="${amigos}">
                <div>
                    <p><img src="${amigo.codigo}.jpg" style="height: 100px; width: 100px"></p>
                    <p><a href="OtrosServlet?param1=${amigo.codigo}">${amigo.nombre}</a></p>
                </div>
                    
                </c:forEach>
            </div>
    </body>
</html>

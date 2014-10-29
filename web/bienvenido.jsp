<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <c:set value="${sessionScope.u}" var="usuario" scope="session"/>
    </head>
    <body>
        <div style="margin-right: 15px;float:  left">
            <center><p>UL Connect</p>
            
            <p><img src="${usuario.codigo}.jpg" style="height: 100px; width: 100px"></p>
            
            <p>${usuario.nombre}</p>
            </center>
            <p> <a href="perfil.jsp">Mi Perfil</a> </p>
            <p> <a href="AmigosServlet">Mis Amigos</a> </p>
        </div>
            <div style="float: left">
                <div>
                    <h3>¿Cómo te sientes?</h3>
                    <div><textarea id="publicacion" name="publicacion" style="margin: 0px; width: 572px; height: 96px;"></textarea></div>
                    <div><button id="btn_publicar" name="btn_publicar">Publicar</button></div>
                </div>
            </div>
        
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${amigo.nombre}</title>
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
            <div>
                <div>
                    <h2>Amigo ${amigo.nombre} &nbsp;&nbsp;&nbsp;
                        <c:if test="${isfriend = false}">
                            <a href="AgregarAmigosServlet.jsp"><img src="mas.jpg" style="height: 25px; width: 25px"></a>
                        </c:if>    
                    </h2>
                </div>
                <div><img src="${amigo.codigo}.jpg" style="height: 100px; width: 100px"></div>
                <div><h3>${perfilA.nombre}</h3></div>
                <div><h3>Amigos</h3></div>
            </div>
        </div>

       
    </body>
</html>

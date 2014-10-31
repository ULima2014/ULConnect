<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${amigo.nombre}</title>
        <c:set value="${sessionScope.u}" var="usuario" scope="session"/>
        <c:set value="${sessionScope.otro}" var="otro" scope="session"/>
        <c:set value="${sessionScope.perfilA}" var="perfilA" scope="session"/>
        <c:set value="${sessionScope.isf}" var="isf" scope="session"/>
        <c:set value="${sessionScope.AmigosO}" var="AmigosO" scope="session"/>
    </head>
    <body>
        <div style="margin-right: 30px;float:  left">
            <center><h2>UL Connect</h2>
            
            <p><img src="${usuario.codigo}.jpg" style="height: 100px; width: 100px"></p>
            
            <h4>${usuario.nombre}</h4>
            </center>
            <p> <a href="bienvenido.jsp">Bienvenido</a> </p>
            <p> <a href="perfil.jsp">Mi Perfil</a> </p>
            <p> <a href="AmigosServlet">Mis Amigos</a> </p>
        </div>
            
        <div style="float: left">
            <div>
                <div>
                    <h2>Amigo ${otro.nombre} &nbsp;&nbsp;&nbsp;
                        <c:if test="${isf == false}">
                            <a href="AgregarAmigosServlet"><img src="mas.jpg" style="height: 25px; width: 25px"></a>
                        </c:if>    
                    </h2>
                </div>
                <div><img src="${otro.codigo}.jpg" style="height: 100px; width: 100px"></div>
                <div><h3>${perfilA.nombre}</h3></div>
                <div><h3>Amigos</h3></div>
                <div>
                <c:forEach var="AmigosOt" items="${AmigosO}">
                <div>
                    <p><img src="${AmigosOt.codigo}.jpg" style="height: 100px; width: 100px"></p>
                    <p><a href="OtrosServlet?param1=${AmigosOt.codigo}">${AmigosOt.nombre}</a></p>
                </div>
                    
                </c:forEach>
            </div>
            </div>
        </div>

       
    </body>
</html>

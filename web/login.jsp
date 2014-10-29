<%-- 
    Document   : login
    Created on : Oct 21, 2014, 8:02:49 AM
    Author     : profw31
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script>
            function onPaginaIniciada(){
                $("#but_registrate").click(onButRegistroOnClick);
            }
            function onButRegistroOnClick(){
                window.location.href = "MostrarRegistroServlet";
                return false;
            }
            window.addEventListener("load", onPaginaIniciada);
        </script>
    </head>
    <body>
        <h1>ULima Connect</h1>
        <p>Usuario</p>
        <form method="POST" action="LoginServlet">
            <p>
                <input type="text" name="usuario" id="usuario" />
            </p>
            <p>Password</p>
            <p>
                <input type="text" name="password" id="password" />
            </p>
            <p>
                <input type="submit" value="Login" />
                <!--<input type="button" value="Registrate" /> -->
                <button id="but_registrate" name="but_registrate" onclick="onButRegistroOnClick()">Registrate</button>
            </p>
            <p><label>${mensaje}</label></p>
        </form>
        
    </body>
    
</html>

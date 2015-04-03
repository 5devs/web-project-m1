<%-- 
    Document   : app
    Created on : 28/03/2015, 18:21:08
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="inc/head_content.jsp" />

        <title>Frete Planejado</title>
        
        <link rel="stylesheet" type="text/css" href="content/css/app.css">
    </head>
    <body>
        <!-- HEADER -->
        <jsp:include page="inc/header.jsp" />
        <!-- /HEADER -->
        
        <%
        //validador de session
        if(session.getAttribute("Logado") == null)
          response.sendRedirect("/FretePlanejado");
        %>

        <article>
            <header id="app-header">
                <h1>Frete Planejado</h1>
            </header>

            <div id="content">
                <div class="blank-slate">
                    Sem Fretes
                </div>
            </div>
        </article>
        
        <jsp:include page="inc/scripts.jsp" />
    </body>
</html>
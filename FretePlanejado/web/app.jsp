<%-- 
    Document   : app
    Created on : 28/03/2015, 18:21:08
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Frete Planejado</title>

        <link href='http://fonts.googleapis.com/css?family=Raleway:700,100,400,200,300' rel='stylesheet' type='text/css'>
        <link href="bower_components/font-awesome/css/font-awesome.css" rel="stylesheet"/>

        <link rel="stylesheet" type="text/css" href="content/css/base.css">
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
    </body>
</html>
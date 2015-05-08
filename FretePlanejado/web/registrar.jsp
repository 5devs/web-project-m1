<%-- 
    Document   : app
    Created on : 28/03/2015, 18:21:08
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/inc/head_content.jsp" />

        <title>Frete Planejado - Cadastro</title>

        <link rel="stylesheet" type="text/css" href="/FretePlanejado/content/css/app.css">
    </head>
    <body>
        <!-- HEADER -->
        <jsp:include page="/inc/header.jsp" />
        <!-- /HEADER -->

        <article id="cadastro">
            <h1>Registrar Usuário</h1>

            <% if (session.getAttribute("msg") != null) { %>
                <div class="msg"><% out.print(session.getAttribute("msg")); session.setAttribute("msg", null); %></div>
            <% } %>

            <form action="/FretePlanejado/RegistroUsuario" method="post" >
                <label for="Nome">Nome</label>
                <input id="Nome" type="text" required="required" autofocus="autofocus" name="Nome" />
                <label for="Email">E-mail</label>
                <input id="Email" type="email" required="required" name="Email" />
                <label for="Password">Senha</label>
                <input id="Password" type="password" name="Password" required="required" />

                <label for="RePassword">Confirmar Senha</label>
                <input id="RePassword" type="password" name="RePassword" required="required" />

                <input type="submit" value="Enviar" class="button">
            </form>
        </article>

        <jsp:include page="/inc/scripts.jsp" />
    </body>
</html>
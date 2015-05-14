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
    <% 
        boolean success = true;
        String message = "";
        if (session.getAttribute("success") != null) {
            success = Boolean.parseBoolean(session.getAttribute("success").toString());
        }
        if (session.getAttribute("message") != null) { 
            message = (String)session.getAttribute("message");
        }
        session.setAttribute("success", null);
        session.setAttribute("message", null);
    %>

        <article id="cadastro">
            <h1>Registrar Usuário</h1>

            <% if (success) { %>
                <div class="success msg"><% out.print(message); %></div>
            <% } else { %>
                <div class="error msg">
                    <ul> 
                        <% 
                        String[] messagesList = message.split("@");
                        for(int i=0; i<messagesList.length; i++) { %>
                        <li><% out.print(messagesList[i]); %></li>
                        <% } %>
                    </ul>
                </div>
            <% } %>

            <form action="/FretePlanejado/RegistroUsuario" method="POST" >
                <label for="Nome">Nome</label>
                <input id="Nome" type="text" required autofocus="autofocus" name="Nome" />
                <label for="Email">E-mail</label>
                <input id="Email" type="email" name="Email" required/>
                <label for="Password">Senha</label>
                <input id="Password" type="password" name="Password" required/>

                <label for="RePassword">Confirmar Senha</label>
                <input id="RePassword" type="password" name="RePassword" required/>

                <input type="submit" value="Enviar" class="button">
            </form>
        </article>

        <jsp:include page="/inc/scripts.jsp" />
    </body>
</html>
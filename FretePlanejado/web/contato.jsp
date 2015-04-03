<%-- 
    Document   : contato
    Created on : 28/03/2015, 18:27:29
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="inc/head_content.jsp" />
        
        <title>Frete Planejado | Contato</title>

        <link rel="stylesheet" type="text/css" href="content/css/main.css">
    </head>
    <body>
        
        <!-- HEADER -->
        <jsp:include page="inc/header.jsp" />
        <!-- /HEADER -->
        
        <article id="contato">
            <h1>Contato</h1>

            <% if(session.getAttribute("sucess") != null) { %>
            <div class="msg">Mensagem enviada com sucesso!</div>
            <% session.setAttribute("sucess", null);
            } %>
            
            <form action="/FretePlanejado/ContatoPost" method="post" >
                <label for="Nome">Nome</label>
                <input id="Nome" type="text"
                    required="required" autofocus="autofocus"
                    <% if(session.getAttribute("Logado") != null) { %> value="Administrador" readonly="false" <% } %> name="Nome" />
                <label for="Email">E-mail</label>
                <input id="Email" type="email"
                    required="required"
                    <% if(session.getAttribute("Logado") != null) { %> value="admin@admin.com" readonly="false" <% } %> name="Email" />
                <label for="Assunto">Assunto</label>
                <input id="Assunto" type="text" name="Assunto" 
                    required="required" />
                <label for="Message">Mensagem</label>
                <textarea id="Message" name="Msg" rows="6"
                    required="required" ></textarea>
                
                <input type="submit" value="Enviar" class="button">
            </form>
        </article>
        
        <jsp:include page="inc/scripts.jsp" />
    </body>
</html>

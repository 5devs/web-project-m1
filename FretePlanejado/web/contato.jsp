<%-- 
    Document   : contato
    Created on : 28/03/2015, 18:27:29
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Frete Planejado | Contato</title>

        <link href='http://fonts.googleapis.com/css?family=Raleway:700,100,400,200,300' rel='stylesheet' type='text/css'>
        <link href="bower_components/font-awesome/css/font-awesome.css" rel="stylesheet"/>
        
        <link rel="stylesheet" type="text/css" href="content/css/base.css">
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
        
        <script src="bower_components/jquery/jquery.min.js" rel="stylesheet"></script>
        <script src="content/js/contato.js"></script>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 19/03/2015, 19:40:19
    Author     : 37816817851
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Frete Planejado</title>

        <link href='http://fonts.googleapis.com/css?family=Raleway:700,100,400,200,300' rel='stylesheet' type='text/css'>
        <link href="bower_components/jquery.onepage-scroll/dist/jquery.onepage-scroll.css" rel="stylesheet"/>
        <link href="bower_components/font-awesome/css/font-awesome.css" rel="stylesheet"/>
        
        <link rel="stylesheet" type="text/css" href="content/css/base.css">
        <link rel="stylesheet" type="text/css" href="content/css/main.css">
    </head>
    <body>
        <header>            
                <%
                
                if(session.getAttribute("Logado") == null)
                {
                %>
                <div class="deslogado">
                <form id="login-form" action="/FretePlanejado/Login" <%=(session.getAttribute("Erro") != null)?"class='invalid'":""%> method="post">
                    <label for="username">Nome de Usuário:</label>
                    <input id="username" name="Login" type="text">
                    
                    <label for="senha">Senha:</label>
                    <input id="senha" name="Senha" type="password">
                    
                    <button id="login">Log In</button>
                </form>
                
                <button id="signup">Registrar</button>
                
                </div>
                   
                <%
                
                if(session.getAttribute("Erro") != null)
                    session.setAttribute("Erro", null);
                 
                }//fim if logado
                else
                {
                   %>
                
            <div class="logado">
                <span id="username">Olá, Administrador! </span>
                <a href="/FretePlanejado/Logout" class="button" id="logout">Log Out</a>
            </div>
                <%
                }
                %>
        </header>

        <div class="main">
            <section id="apresentacao">
                <h1>Frete Planejado</h1>

                <p>Planeje seus fretes de forma rápida, inteligente
                  e precisa.</p>

                <div class="download-buttons">
                    <a href="#" class="button android"><span class="fa fa-android"></span> Download</a>
                    <a href="#" class="button windows-phone"><span class="fa fa-windows"></span> Download</a>
                    <a href="#" class="button ios"><span class="fa fa-apple"></span> Download</a>
                </div>

                <p>Acessível de qualquer dispositivo, em qualquer lugar, a qualquer hora.</p>
            </section>

            <section id="para-embarcadores-intro">
                <h2>Para Quem Envia</h2>

                <p>Gerencie suas entregas de maneira fácil e rápida, sem se preocupar com
                    a transportadora.</p>
            </section>

            <section id="rastreamento">
              <h2>Rastreie Sua Carga</h2>
              <p>Visualize sua entrega com um mapa atualizado em tempo real.</p>
              <div class="imagem">
                <img src="content/img/staticmap.png" alt="Mapa" class="mapa" />
              </div>
            </section>

            <section id="confiabilidade">
              <h2>Confiabilidade</h2>

              <p>Encontre a transportadora ideal para a sua carga consultando seu histórico
                e avaliações de clientes anteriores.</p>
            </section>

            <section id="para-transportadoras-intro">
                <h2>Para Quem Transporta</h2>

                <p>Divulgue sua marca e gerencie suas rotas.</p>

                <div class="imagem">
                    <img src="content/img/caminhao2.png" class="caminhao">
                </div>
            </section>

            <section id="controle-de-frota">
              <h2>Controle de Frota</h2>
              
              <p>Gerenciamento completo para sua frota, com informações de localização
                em tempo real e sugestões para uma melhor programação em suas entregas.</p>
            </section>

            <section id="carga-ideal">
              <h2>Encontre Sua Carga Ideal</h2>
              
              <p>Com um amplo registro de cargas disponível, encontre a que melhor se encaixa
                em sua rota.</p>
            </section>
        </div>


        <script src="bower_components/Modernizr/modernizr.js" rel="stylesheet"></script>
        <script src="bower_components/jquery/dist/jquery.min.js" rel="stylesheet"></script>
        <script src="bower_components/jquery.onepage-scroll/dist/jquery.onepage-scroll.min.js" rel="stylesheet"/></script>
        <script src="content/js/main.js"></script>
    </body>
</html>
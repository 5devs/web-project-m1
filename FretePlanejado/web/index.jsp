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
        <jsp:include page="inc/header.jsp" />

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

            <section id="rastreamento">
                <h2>Para Quem Envia</h2>

                <p>Gerencie suas entregas de maneira fácil e rápida, sem se preocupar com
                    a transportadora.</p>

                <p>Rastrei sua entrega com um mapa atualizado em tempo real.</p>

                <p>Encontre a transportadora ideal para a sua carga consultando seu histórico
                e avaliações de clientes anteriores.</p>

              <div class="showcase-image">
                  <img src="content/img/staticmap.png" alt="Mapa" class="mapa" /> </div>
            </section>


            <section id="para-transportadoras-intro">
                <h2>Para Quem Transporta</h2>

                <p>Divulgue sua marca e gerencie suas rotas.</p>

                <p>Gerenciamento completo para sua frota, com informações de localização
                em tempo real e sugestões para uma melhor programação em suas entregas.</p>

                 <p>Com um amplo registro de cargas disponível, encontre a que melhor se encaixa
                em sua rota.</p>

                <div class="imagem">
                    <img src="content/img/caminhao2.png" class="caminhao">
                </div>
            </section>

            <section id="contato">
                <h2>Contato</h2>

                <p>Quer saber mais sobre o frete planejado? tem alguma duvida? Alguma segestão?</p>

                <a href="/FretePlanejado/contato.jsp" class="entrecontato">Entre em Contato!</a>

                <p>Você também nos encontra nas redes socias</p>

                <ul id="redes-sociais">
                  <li><span class="fa fa-twitter"></span></li>
                  <li><span class="fa fa-facebook"></span></li>
                  <li><span class="fa fa-youtube"></span></li>
                </ul>

                <div class="showcase-image">
                    <img src="content/img/contato.png" class="contato">
                </div>
            </section>
        </div>


        <script src="bower_components/Modernizr/modernizr.js" rel="stylesheet"></script>
        <script src="bower_components/jquery/dist/jquery.min.js" rel="stylesheet"></script>
        <script src="bower_components/jquery.onepage-scroll/dist/jquery.onepage-scroll.min.js" rel="stylesheet"/></script>
        <script src="content/js/main.js"></script>
    </body>
</html>

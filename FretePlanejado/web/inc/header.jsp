<%-- 
    Document   : header
    Created on : 28/03/2015, 18:28:19
    Author     : Gabriel Malaquias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="user-controls">

        
  <!-- MENU --> 
  <ul id="main-menu">
      <li><a href="/FretePlanejado">Home</a></li>
      <li><a href="#">Fretes</a></li>
      <li><a href="#">Calendário</a></li>
      <li><a href="/FretePlanejado/contato.jsp">Contato</a></li>
  </ul>
  <!-- /MENU -->

  <% if(session.getAttribute("Logado") == null) { %>
    <div class="deslogado">
      <form id="login-form" action="/FretePlanejado/Login"
        class="<%=(session.getAttribute("Erro") != null) ? "invalid" : "" %>"
        method="post">
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
  } else {
  %>
    <div class="logado">
      <span id="username-display"><img src="/FretePlanejado/content/img/avatar.png" /> Olá, Administrador!</span>
      <a href="/FretePlanejado/app.jsp" class="button" id="app">Painel</a>
      <a href="/FretePlanejado/Logout" class="button" id="logout">Log Out</a>
    </div>
  <% } %>
</header>

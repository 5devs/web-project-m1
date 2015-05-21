<%-- 
    Document   : app
    Created on : 28/03/2015, 18:21:08
    Author     : Gabriel Malaquias
--%>

<%@page import="java.util.List"%>
<%@page import="com.freteplanejado.data.FreteDAO"%>
<%@page import="com.freteplanejado.entity.Frete"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/inc/head_content.jsp" />

        <title>Frete Planejado</title>

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
                message = (String) session.getAttribute("message");
            }
            session.setAttribute("success", null);
            session.setAttribute("message", null);
        %>

        <article id="fretes">
            <% if (success) { %>
            <div class="success msg"><% out.print(message); %></div>
            <% } else { %>
            <div class="error msg">
                <ul> 
                    <%
                        String[] messagesList = message.split("@");
                        for (int i = 0; i < messagesList.length; i++) { %>
                    <li><% out.print(messagesList[i]); %></li>
                        <% } %>
                </ul>
            </div>
            <% } %>


            <h1>Adicionar Frete</h1>
            <form action="/FretePlanejado/RegistroFrete" method="POST" >
                <label for="Origem">Origem</label>
                <input id="Origem" type="text" required autofocus="autofocus" name="Origem" />
                <label for="Destino">Destino</label>
                <input id="Destino" type="text" required name="Destino" />

                <label for="Altura">Altura</label>
                <input id="Altura" type="number" name="Altura" min="0" step="ANY"/>
                <label for="Largura">Largura</label>
                <input id="Largura" type="number" name="Largura" min="0" step="ANY"/>
                <label for="Profundidade">Profundidade</label>
                <input id="Profundidade" type="number" name="Profundidade" min="0" step="ANY"/>
                <label for="Peso">Peso</label>
                <input id="Peso" type="number" name="Peso" min="0" step="ANY"/>
                <label for="Observacoes">Observações</label>
                <textarea id="Observacoes" name="Observacoes"></textarea>

                <input type="submit" value="Enviar" class="button">
            </form>
            
            <hr>
            
            <h1>Fretes</h1>
            <div id="listadefretes">
                <table> 
                    <thead>
                        <tr>
                            <th>
                                Origem
                            </th>
                            <th>
                                Destino
                            </th>
                            <th>Altura</th>
                            <th>Largura</th>
                            <th>Prof.</th>
                            <th>Peso</th>
                            <th>Obs.</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    
                    <%
                        List<Frete> fretes = new FreteDAO().all();
                        for (int i = 0; i < fretes.size(); i++) { %>
                    <tr>
                        <td>
                            <% out.print(fretes.get(i).getOrigem()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getDestino()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getAltura()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getLargura()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getProfundidade()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getPeso()); %>
                        </td>
                        <td>
                            <% out.print(fretes.get(i).getObservacoes()); %>
                        </td>
                        <td class="actions">
                            <a href="/FretePlanejado/FreteDelete?id=<%out.print(fretes.get(i).getId());%>" class="button ">
                                <i class="fa fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                    <% }%>
                    </tbody>
                </table>
            </div>
        </article>

        <jsp:include page="/inc/scripts.jsp" />
    </body>
</html>
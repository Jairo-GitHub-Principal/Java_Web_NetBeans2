<%-- 
    Document   : listarpessoas
    Created on : Jun 20, 2023, 9:06:02 PM
    Author     : admin
--%>

<%@page import="java.util.List"%>
<%@page import="Classes.Pessoa"%>
<%@page import="Classes.pessoaService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Classes.pessoaService" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Pessoa p = new Pessoa();
            pessoaService ps = new pessoaService();
            List<Pessoa> listar = ps.ListarPessoas();
        
        %>
        <h1>listar  pessoas!</h1>
        <a href="./index.html">Pagina inicial</a>
        
         <table>
           
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Email</th>
                </tr>
            </thead>
            
            <tbody>
                 
                <% for(Pessoa P: listar){%>
                <tr>
                    <td><%out.write(P.getId());%></td>
                    <td><%out.write(P.getNome());%></td>
                    <td><%out.write(P.getEmail());%></td>
                    
                    <td><%out.write("<a href=editar.jsp?id="+""+ P.getId() +"> Editar </a>");%></td>
                    <td></td>
                    
                     
                </tr>
                
                
                
                <% } %>
                
                
            </tbody>
    
        </table>
        
    </body>
</html>

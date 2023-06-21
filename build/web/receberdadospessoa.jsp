<%-- 
    Document   : receberdadospessoa
    Created on : Jun 20, 2023, 9:05:18 PM
    Author     : admin
--%>
<%@page  import="Classes.Pessoa" %>
<%@page  import="Classes.pessoaService" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
       
    Pessoa pes = new Pessoa();
    pessoaService ps = new pessoaService();
    pes.setNome(nome);
    pes.setEmail(email);
    if(ps.IcluirPessoa()){
        response.sendRedirect("cadastrarpessoa.jsp?msg=cadastro realizado com sucesso");
        
    }else{
        response.sendRedirect("cadastrarpessoa.jsp?msg=erro ao cadastrar");
    }
    
 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello!</h1>
    </body>
</html>

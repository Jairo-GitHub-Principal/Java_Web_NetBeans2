<%-- 
    Document   : cadastrarpessoa
    Created on : Jun 20, 2023, 9:04:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>cadastrar pessoas!</h1>
        <a href="./index.html">Pagina inicial</a>
        
         <div>
           
            <form id="pessoa" action="receberdadospessoa.jsp" method="POST">
                <h3> Cadastro de pessoas </h3>
                <p></p>
               
                
                <fieldset>
                    <label>Nome</label>
                    <div>
                        <input id="nome" name="nome" placeholder="Informe o nome" type="text" required maxlength="40" style="text-transform:uppercase ">
                    </div>
                </fieldset>
                
                <fieldset>
                    <label>Email</label>
                    <div>
                        <input id="email" name="email" placeholder="Informe o E-mail" type="text" required maxlength="40" style="text-transform:lowercase "/>
                    </div>
                </fieldset> <br>
                
                <div>
                    <div>
                        <input type="submit" value="Cadastrar" class="btn btn-primary"onclick="enviaForm()"/>
                    </div> 
                    
                     <div>
                        <input type="reset" value="Cancelar" class="btn btn-danger"/>
                    </div> 
                </div>
    </body>
</html>

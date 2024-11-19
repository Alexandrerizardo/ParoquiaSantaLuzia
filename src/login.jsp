<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<% 
    if ("POST".equals(request.getMethod())) {
    String fEmail = request.getParameter("txtEmail2");
    String fsenha = request.getParameter("txtSenha2");

    String nomeBanco = "paroquia";
    String enderecoBanco = "jdbc:mysql://localhost:3306/" + nomeBanco;
    String nomeUsuario = "root";
    String senhaBanco = "";

    String driver = "com.mysql.jdbc.Driver";
        Class.forName(driver);
        Connection conexao;

    try{
        conexao = DriverManager.getConnection(enderecoBanco, nomeUsuario, senhaBanco);

        String queryEmail = "SELECT * FROM usuarios WHERE Email = ?";
        String querySenha = "SELECT Senha FROM usuarios WHERE Email = ?";

        PreparedStatement stm = conexao.prepareStatement(queryEmail);
        PreparedStatement stmSenha = conexao.prepareStatement(querySenha);

        stm.setString(1, fEmail);
        stmSenha.setString(1, fEmail);

        ResultSet email = stm.executeQuery();
        ResultSet senha = stmSenha.executeQuery();

        if(senha.next()){
            String senhaUsuario = senha.getString("Senha");
            if(!senhaUsuario.equals(fsenha)){
                out.print("<p>Senha Incorreta.</p>");
            }else{
                out.print("<p>Login Bem sucedido!</p>");
                response.sendRedirect("aboutUs.jsp");
            }
        }

        if(!email.next()){
            out.print("<p>Email Incorreto.</p>");
        }

        if(email.next() && senha.next()){
             out.print("<p>Usuário Aceito.</p>");
        }
    }
    catch(Exception err){
        err.printStackTrace();
        out.print("<p>Erro ao concetar ao banco de Dados. Tente novamente mais tarde!</p>");
    }
    }
%>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paróquia Santa Luzia - Página de login</title>
    <link rel="stylesheet" href="./css/login.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap');
    </style>
        <script src="./js/loginForm.js"></script>
    <header>
        <div class="headerTitle">
            <h2>Paróquia Santa Luzia</h2>
        </div>
    </header>

    <body>
        
          <div>
            <dialog id="d2">
              <P>Usuário aceito!</P>
              <button onclick="closeModal()">Sair</button>
            </dialog>
          </div>

          <div class="contentMainPage">
                <form name="loginForm" action="login.jsp" method="post" onsubmit="return verificarFormLogin()">
                    <div id="form">
                        <h2>Seja bem vindo!</h2>
                        <div class="inputLogin">
                            <input name="txtEmail2" id="email" type="text" placeholder="Email">
                            <span id="erroEmail"></span>
                        </div>
                
                        <div class="inputLogin">
                            <input name="txtSenha2" id="senha" type="password" placeholder="Senha">
                            <span id="erroSenha"></span>
                        </div>
                        <div class="submitLogin2">
                        <a href="./index.jsp">Não tem login? Cadastrar</a>
                            <input type="submit" id="buttonFormLogin"  value="Login">
                        </div>
                    </div>
            </form>
          </div>
    </body>
</html>
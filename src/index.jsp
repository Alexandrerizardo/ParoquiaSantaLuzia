<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
  if ("POST".equals(request.getMethod())) {
  String fnome = request.getParameter("txtNome");
  String femail = request.getParameter("txtEmail");
  String ftel = request.getParameter("txtTel");
  String fsenha = request.getParameter("txtSenha");
  String fendereco = request.getParameter("txtEndereco");

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
    String query = "INSERT INTO usuarios (Nome, Email, Senha, Telefone, Endereco) VALUES (?, ?, ?, ?, ?)";

    PreparedStatement stm = conexao.prepareStatement(query);
    PreparedStatement stmEmail = conexao.prepareStatement(queryEmail);

    stmEmail.setString(1, femail);
    stm.setString(1, fnome);
    stm.setString(2, femail);
    stm.setString(3, fsenha);
    stm.setString(4, ftel);
    stm.setString(5, fendereco);

    ResultSet email = stmEmail.executeQuery();

    if(email.next()){
        out.print("<P>Usuário Já existe!</P>");
    }else{
        stm.execute();
        stm.close();
        response.sendRedirect("okPage.jsp");
    }

  }catch(Exception err){
        err.printStackTrace();
        out.print("Erro ao conectar no banco de dados." + err);
  }

}
%>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paróquia Santa Luzia - Página de login</title>
    <link rel="stylesheet" href="./css/mainPage.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap');
    </style>
        <script src="./js/loginForm.js"></script>
    <header>
        <div class="headerTitle">
            <h2>Paróquia Santa Luzia</h2>
        </div>
        <div class="buttonsNav">
            <button id="btnLogin" type="button"><a href="./login.jsp">Login</a></button>
            <%-- <button><a href="./aboutUs.html">Sobre nós</a></button> --%>
        </div>
    </header>
    <img src="./assets/mainPage/intersecting-wave-layers.svg" alt="Divisor">
    <body>
        
        <%-- <div>
            <dialog>
              <P>Usuário criado! Verifique seu email.</P>
              <button onclick="closeModal()">Sair</button>
            </dialog>
          </div> --%>

        <div class="contentMainPage">
            <form name="cadastroForm" action="index.jsp" method="post" onsubmit="return verificarCadastro()">
            <div id="login">
                <div class="inputLogin">
                    <input name="txtNome" id="nomeLogin" type="text" placeholder="Nome">
                    <span id="erroNome"></span>
                </div>
                <div class="inputLogin">
                    <input name="txtEndereco" id="enderecoLogin" type="text" placeholder="Endereço">
                    <span id="erroEndereco"></span>
                </div>
                <div class="inputLogin">
                    <input name="txtTel" id="telefoneLogin" type="text" placeholder="Telefone" maxlength="15" oninput="formatTel(this)">
                    <span id="erroTelefone"></span>
                </div>
                <div class="inputLogin">
                    <input name="txtEmail" id="emailLogin" type="text" placeholder="Email">
                    <span id="erroEmail"></span>
                </div>
                <div class="inputLogin">
                    <input name="txtSenha" id="senhaLogin" type="password" placeholder="Senha">
                    <span id="erroSenha"></span>
                </div>
                <div class="inputLogin">
                    <input id="senhaConfirmLogin" type="password" placeholder="Confirme a senha">
                    <span id="erroSenhaConfirm"></span>
                </div>
                <div class="submitLogin">
                    <input type="submit"  id="buttonForm" value="Cadastre-se">
                </div>
            </div>
        </form>

            <div id="containerWelcome">
                <P>Seja bem vindo a nossa comunidade paroquial! Aqui você encontrará informações osobre as nossas missas, eventos, e atividades pastorais. Sinta-se em casa para explorar e conhecer mais sobre nossa fé, nossa história e como você pode se envolver.</P>
                <p>Que Deus o abençoe e ilumine Sempre!</p>
            </div>
        </div>
    </body>
</html>
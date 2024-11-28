<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paróquia Santa Luzia - Meus agendamentos</title>
    <link rel="stylesheet" href="./css/sacramentSchedulingPage.css">
    <script src="./js/mySchedulingPage.js"></script>
     <style>
      @import url("https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap");
    </style>
</head>
<body onload="localData()">
 <header>
      <h2>Paróquia Santa Luzia</h2>
      <div class="buttonsNav">
        <button id="btnMenu" type="button" onclick="menu()"><img src="./assets/ministeriesGroupsPage/menu-svgrepo-com (1).svg" alt="menu"></button>
      </div>
    </header>
    <div class="titlePage">
      <h2>Meus agendamentos</h2>
    </div>

    <nav class="asideNav"></nav>
    <ul id="divNav">
    <h3>Menu do usuário</h3>
  <li id="contentNav">
     <a href="./aboutUs.jsp"><button>Sobre nós</button></a>
  </li>
  <li id="contentNav">  
      <a href="./coursePage.jsp"><button>Cursos</button></a>
  </li>
   <li id="contentNav">
        <a href="./ministeries&GroupsPage.jsp"><button>Ministerios e Grupos</button> </a>
    </li>
  <li id="contentNav">
      <a href="./sacramentSchedulingPage.jsp"><button>Agendar Sacramento</button> </a>
  </li>
  <li id="contentNav">
      <a href="./index.jsp"><button onclick="getOut()">Sair</button></a>
  </li>
</ul>
</nav>

<div id="consulta">

   <form method="POST" action="mySchedulingPage.jsp">
            <input name="txtLS" type="hidden" id="txtLS">
        <button id="btnConsulta" type="submit">Buscar Agendamentos</button>
    </form>

        <% if ("POST".equals(request.getMethod())) {
             String localData = request.getParameter("txtLS");
             //out.print(localData);

            String nomeBanco = "paroquia";
            String enderecoBanco = "jdbc:mysql://localhost:3306/" + nomeBanco;
            String nomeUsuario = "root";
            String senhaBanco = "";

            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);

            try{
                Connection conexao;

                conexao = DriverManager.getConnection(enderecoBanco, nomeUsuario, senhaBanco);

                String queryUsuario = "SELECT Id FROM usuarios WHERE Email = ?";
                String sql = "SELECT Email_Participante, Telefone_Participante, Sacramento, Data_Agendamento FROM agendasacramento WHERE Id_Usuario_Responsavel = ?";

                PreparedStatement stmUsuario = conexao.prepareStatement(queryUsuario);
                PreparedStatement stm = conexao.prepareStatement(sql);
                stmUsuario.setString(1, localData);

                ResultSet usuario = stmUsuario.executeQuery();
                 while(usuario.next()){
                    stm.setString(1, usuario.getString("Id"));
                 }

                ResultSet dados = stm.executeQuery();

                out.print("<table>");
                    out.print("<thead>");
                        out.print("<tr>");
                            out.print("<th>Nome</th>");
                            out.print("<th>Email</th>");
                            out.print("<th>Telefone</th>");
                            out.print("<th>Data de Agendamento</th>");
                        out.print("</tr>");
                    out.print("</thead>");

                while ( dados.next() )
                {

                    out.print("<tr>");
                        out.print("<td>");
                            out.print( dados.getString("Email_Participante"));
                        out.print("</td>");

                        out.print("<td>") ;
                            out.print( dados.getString("Telefone_Participante"));                    
                        out.print("</td>");

                        out.print("<td>");
                            out.print( dados.getString("Sacramento"));
                        out.print("</td>");

                        out.print("<td>");
                            out.print( dados.getString("Data_Agendamento"));
                        out.print("</td>");                             
                    out.print("</tr>");
                }
                out.print("</table>"); 
                
        }catch(Exception err){
            err.printStackTrace();
            out.print("Erro ao conectar no banco de dados." + err);
        }
        }
        %> 
</div>
</body>
</html>
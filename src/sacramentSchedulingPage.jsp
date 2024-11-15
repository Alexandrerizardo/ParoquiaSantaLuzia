<%@page language="java" import="java.sql.*"%>
<%
  String Fnome = request.getParameter("txtNome");
  String Femail = request.getParameter("txtEmail");
  String Ftel = request.getParameter("txtTel");
  String Fsacrament = request.getParameter("txtSelect");
  String Fdata = request.getParameter("txtData");

  String nomeBanco = "paroquia";
  String enderecoBanco = "jdbc:mysql://localhost:3306/" + nomeBanco;
  String nomeUsuario = "root";
  String senhaBanco = "";

  String driver = "com.mysql.jdbc.Driver";
  Class.forName(driver);

  Connection conexao;

  conexao = DriverManager.getConnection(enderecoBanco, nomeUsuario, senhaBanco);


  //String query = "INSERT INTO agendasacramento (Nome_Sacramento, Data_Agendada, CPF_Usuario)"

%>

<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paróquia Santa Luzia - Agendamento de sacramentos</title>
    <link rel="stylesheet" href="./css/sacramentSchedulingPage.css" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap");
    </style>
    <script src="./js/sacrament.js"></script>
  </head>
  <body>
    <header>
        <h2>Paróquia Santa Luzia</h2>
        <div class="buttonsNav">
          <button id="btnMenu" onclick="menu()"><img src="./assets/sacramentSchedulingPage/menu-svgrepo-com (1).svg" alt="Menu"></button>
        </div>
      </header>
      <div class="titlePage">
        <h2>Agende seu sacramento</h2>
      </div>
      <nav class="asideNav"></nav>
      <ul id="divNav">
      <h3>Menu do usuário</h3>
    <li id="contentNav">
       <a href="./aboutUs.html"><button>Sobre nós</button></a>
    </li>
    <li id="contentNav">  
        <a href="./coursePage.html"><button>Cursos</button></a>
    </li>
    <li id="contentNav">
        <a href="./ministeries&GroupsPage.html"><button>Ministerios e Grupos</button> </a>
    </li>
    <li id="contentNav">
        <a href="./index.html"><button>Sair</button></a>
    </li>
  </ul>
  </nav>
  <dialog>
    <P>Agendamento realizado!</P>
    <button onclick="closeModal()">Sair</button>
  </dialog>
</div>
      <div class="containerMain">

        <form class="mainForm" action="sacramentSchedulingPage.jsp" >
          <div class="formContent">
            <div class="inputForm">
              <label for="txtName">Nome Completo:</label>
              <input name="txtNome" type="text" id="txtName">
              <span id="erroNome"></span>
            </div>
            <div class="inputForm">      
              <label for="txtEmail">Email:</label>
              <input name="txtEmail" type="text" id="txtEmail">
                <span id="erroEmail"></span>
            </div>
            <div class="inputForm">
              <label for="txtTel">Telefone:</label>
              <input name="txtTel" id="txtTel" type="text" min="0" max="99999999999"  maxlength="15" oninput="formatTel(this)">
              <span id="erroTel"></span>
            </div>
          
            <div class="inputForm">
              <label>Sacramento que deseja realizar:</label>
              <select name="txtSelect" id="selectForm" >
                <option value="">  </option>
                <option value="marry">Matrimônio</option>
                <option value="baptism">Batismo</option>
                <option value="first">Primeira Comunhão</option>
                <option value="confission">Confissão</option>
              </select>
              <span id="erroSelect"></span>
            </div>

            <div class="inputForm">
              <label for="dateSacrament">Datas disponíveis:</label>
              <input name="txtData" type="date" id="dateSacrament" >
            </div>

            <div class="inputForm">
              <input type="button"  id="buttonForm" onclick="formValidation()" value="Enviar">
            </div>
                  </div>
            </form>
      </div>

      <footer class="rodape">
        <div class="textFooter">
          <h3>Horário das Missas</h3>
          <ul>
            <li>Quinta: 15h;</li>
            <li>Sexta: 19h30;</li>
            <li>Sábado: 08h;</li>
            <li>Domingo: 07h, 10h30 e 19h;</li>
            <li>
              Todo dia 13: 15h – Missa Votiva de Santa Luzia (exceto se for
              sábado/domingo);
            </li>
          </ul>
          <h3>Atendimento do Padre (confissões)</h3>
          <ul>
            <li>Sexta: das 15h às 18h</li>
            <li>Sábado: 09h30 às 11h30;</li>
            <li>Outros dias e locais: conferir redes sociais.;</li>
          </ul>
          <h3>Atendimento da secretaria</h3>
          <ul>
            <li>Terça a Sexta: das 09h às 18h</li>
            <li>Sábado: das 08h às 15h</li>
          </ul>
          <br />
          <br />
          <div id="contato">
            <div>
              <img src="./assets/sacramentSchedulingPage/instagram-svgrepo-com.svg" alt="Insta" />
              <a href="https://www.instagram.com/paroquiasantaluziaalvorada/"
                >Instagram</a
              >
            </div>
            <div>
              <img src="./assets/sacramentSchedulingPage/facebook-svgrepo-com.svg" alt="Facebook" />
              <a href="https://www.facebook.com/paroquiasantaluziaalvorada/"
                >Facebook</a
              >
            </div>
            <div>
              <img src="./assets/sacramentSchedulingPage/whatsapp-svgrepo-com.svg" alt="Wpp" />
              <a href="https://wa.me/+55 11 4966-2941">Whatsapp</a>
            </div>
            <div>
              <img src="./assets/sacramentSchedulingPage/email-svgrepo-com.svg" alt="Email" />
              <a href="santaluziaalvorada@gmail.com"
                >santaluziaalvorada@gmail.com</a
              >
            </div>
          </div>
        </div>
        <div class="map">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58565.283012818065!2d-46.46059498486445!3d-23.44855137453208!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce620c84ed8d19%3A0x22bd8beb66b911e!2sIgreja%20cat%C3%B3lica%20Romana%20Par%C3%B3quia%20Santa%20Luzia%20-%20Alvorada!5e0!3m2!1spt-BR!2sbr!4v1726085986557!5m2!1spt-BR!2sbr"
            width="600"
            height="450"
            style="border: 0"
            allowfullscreen=""
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
          ></iframe>
        </div>
      </footer>
  </body>
</html>

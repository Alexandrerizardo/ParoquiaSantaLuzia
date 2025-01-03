<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
  if ("POST".equals(request.getMethod())) {

    String fnome = request.getParameter("txtNome");
    String fcpf = request.getParameter("txtCPF");
    String fendereco= request.getParameter("txtEndereco");
    String ftel = request.getParameter("txtTel");
    String femail = request.getParameter("txtEmail");
    String fcurso = request.getParameter("txtCurso");
    String fusuario = request.getParameter("txtLS");



       String nomeBanco = "paroquia";
       String enderecoBanco = "jdbc:mysql://localhost:3306/" + nomeBanco;
       String nomeUsuario = "root";
       String senhaBanco = "";

       String driver = "com.mysql.jdbc.Driver";
       Class.forName(driver);

       Connection conexao;

      try{
         conexao = DriverManager.getConnection(enderecoBanco, nomeUsuario, senhaBanco);
         String queryUsuario = "SELECT Id FROM usuarios WHERE Email = ?";
         String query = "INSERT INTO cursos (Nome_Aluno, Endereco_Aluno, CPF_Aluno, Email_Aluno, Telefone_Aluno, Nome_Curso, Id_Usuario_Responsavel) VALUES (?, ?, ?, ?, ?, ?, ?)";

         PreparedStatement stm = conexao.prepareStatement(query);
         PreparedStatement stmUsuario = conexao.prepareStatement(queryUsuario);

         stmUsuario.setString(1, fusuario);
         stm.setString(1, fnome);
         stm.setString(2, fendereco);
         stm.setString(3, fcpf);
         stm.setString(4, femail);
         stm.setString(5, ftel);
         stm.setString(6, fcurso);
  

       ResultSet usuario = stmUsuario.executeQuery();

       while(usuario.next()){
         stm.setString(7, usuario.getString("Id"));
       }
       stm.execute();
       stm.close();

       response.sendRedirect("confirmCourse.jsp");
     }catch(Exception err){
           err.printStackTrace();
           out.print("Erro ao conectar no banco de dados." + err);
     }

}
%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paróquia Santa Luzia - Cursos</title>
    <link rel="stylesheet" href="./css/coursePage.css" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap");
    </style>
    <script src="./js/courses.js"></script>
  </head>
  <body onclick="closeMenu()">
    <header>
      <h2>Paróquia Santa Luzia</h2>
      <div class="buttonsNav">
        <button id="btnMenu" type="button" onclick="menu()"><img src="./assets/coursesPage/menu-svgrepo-com (1).svg" alt=""></button>
    </div>
    </header>

    <div class="titlePage">
      <h2>Nossos cursos</h2>
    </div>

    <div>
      <dialog>
        <div class="closeBtn">
          <button onclick="closeModal()" id="btnClose">X</button>
        </div>
        <P id="titlePopUp"></P>
        <div class="contentFormCurso">
         <form name="courseForm" action="coursePage.jsp" method="post" onsubmit="return verificarCurso()">
          <input name="txtCurso" type="hidden" id="idCurso">
          <input name="txtLS" type="hidden" id="txtLS">

          <input name="txtNome" type="text" id="nameUser" placeholder="Nome completo">
          <span id="erroNome"></span>

          <input name="txtCPF" type="text" id="cpfUser" placeholder="CPF" maxlength="14" oninput="formatCPF(this)">
          <span id="erroCPF"></span>

          <input name="txtEndereco" type="text" id="addressUser" placeholder="Endereço">
          <span id="erroAddress"></span>

          <input name="txtTel" type="text" id="telUser" placeholder="Telefone" maxlength="15" oninput="formatTel(this)">
          <span id="erroTel"></span>

          <input name="txtEmail" type="text" id="emailUser" placeholder="Email">
          <span id="erroEmail"></span>

         <input type="submit" id="btnSubmit" value="Enviar">
        </form>
        </div>
      </dialog>
    </div> 

    <nav class="asideNav"></nav>
    <ul id="divNav">
    <h3>Menu do usuário</h3>
  <li id="contentNav">
     <a href="./aboutUs.jsp"><button>Sobre nós</button></a>
  </li>
  <li id="contentNav">  
      <a href="./ministeries&GroupsPage.jsp"><button>Ministérios e grupos</button></a>
  </li>
  <li id="contentNav">
      <a href="./sacramentSchedulingPage.jsp"><button>Agendar Sacramento</button> </a>
  </li>
    <li id="contentNav">
        <a href="./mySchedulingPage.jsp"><button>Meus Agendamentos</button> </a>
    </li>
  <li id="contentNav">
      <a href="./index.jsp"><button onclick="getOut()">Sair</button></a>
  </li>
</ul>
</nav>
    <div class="containerMain">
      <div class="cards">
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-gratis/vista-lateral-de-mulher-orando-com-cruz-de-madeira_23-2148822727.jpg?ga=GA1.1.116615494.1715215519"
            alt="Catequse"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard1">Catequese de adultos</h3>
              <p>1 ano de duração</p>
            </div>
            <button id="btnPlus" type="button" onclick="popUp(1)">Inscreva-se</button>
          </div>
        </div>
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-premium/pessoas-com-maos-em-oracao-posam_1000823-261052.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid"
            alt="Catequse"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard2">Catequese de crianças</h3>
              <p>2 anos de duração</p>
            </div>
            <button id="btnPlus" type="button" onclick="popUp(2)">Inscreva-se</button>
          </div>
        </div>
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-gratis/close-up-da-pilha-de-livros-com-um-banco-piggy_1252-764.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid"
            alt="Educação financeira"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard3">Educação financeira</h3>
              <p>3 meses de duração</p>
            </div>
            <button  id="btnPlus" type="button" onclick="popUp(3)">Inscreva-se</button>
          </div>
        </div>
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-gratis/homem-segurando-mao-de-mulher-sorridente-perto-flores_23-2148001550.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid"
            alt="Curso de noivos"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard4">Curso de matrimônio</h3>
              <p>6 meses de duração</p>
            </div>
            <button  id="btnPlus" type="button" onclick="popUp(4)">Inscreva-se</button>
          </div>
        </div>
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-premium/uma-mao-de-homem-segurando-um-livro-antigo-aberto-com-pagina-entupida-em-fundo-de-madeira_880763-21316.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid"
            alt="Teologia e filosofia"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard5">Teologia e filosofia</h3>
              <p>1 ano e 6 meses de duração</p>
            </div>
            <button  id="btnPlus" type="button" onclick="popUp(5)">Inscreva-se</button>
          </div>
        </div>
        <div class="principalCard">
          <img
            src="https://img.freepik.com/fotos-gratis/mulher-jovem-a-rezar_23-2150755556.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid"
            alt="aula de canto"
          />
          <div class="contentCard">
            <div>
              <h3 id="titleCourseCard6">Canto e instrumentos</h3>
              <p>1 ano de duração</p>
            </div>
            <button  id="btnPlus" type="button" onclick="popUp(6)">Inscreva-se</button>
          </div>
        </div>
      </div>
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
            <img src="./assets/coursesPage/instagram-svgrepo-com.svg" alt="Insta" />
            <a href="https://www.instagram.com/paroquiasantaluziaalvorada/"
              >Instagram</a
            >
          </div>
          <div>
            <img src="./assets/coursesPage/facebook-svgrepo-com.svg" alt="Facebook" />
            <a href="https://www.facebook.com/paroquiasantaluziaalvorada/"
              >Facebook</a
            >
          </div>
          <div>
            <img src="./assets/coursesPage/whatsapp-svgrepo-com.svg" alt="Wpp" />
            <a href="https://wa.me/+55 11 4966-2941">Whatsapp</a>
          </div>
          <div>
            <img src="./assets/coursesPage/email-svgrepo-com.svg" alt="Email" />
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

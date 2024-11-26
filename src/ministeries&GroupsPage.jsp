<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paróquia Santa Luzia - Ministérios e grupos</title>
    <link rel="stylesheet" href="./css/ministeries&Groups.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap");
      </style>
      <script src="./js/ministeries.js"></script>
  </head>
  <body>
    <header>
      <h2>Paróquia Santa Luzia</h2>
      <div class="buttonsNav">
        <button id="btnMenu" type="button" onclick="menu()"><img src="./assets/ministeriesGroupsPage/menu-svgrepo-com (1).svg" alt="menu"></button>
      </div>
    </header>
    <div class="titlePage">
      <h2>Ministérios e grupos</h2>
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
      <a href="./sacramentSchedulingPage.jsp"><button>Agendar Sacramento</button> </a>
  </li>
  <li id="contentNav">
      <a href="./index.jsp"><button onclick="getOut()">Sair</button></a>
  </li>
</ul>
</nav>
        <div class="containerMain">
            <div class="gruposContainer">
                <div class="gruposDiv">
                  <h2>Ministério da Eucaristia</h2>
                  <img src="https://img.freepik.com/fotos-gratis/feche-a-mao-segurando-a-eucaristia_23-2149301803.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid" alt="Ministério da eucaristia">
                    <div class="contentCard">
                        <div>
                          <p>O Ministério da Eucaristia é formado por ministros que auxiliam na distribuição da Sagrada Comunhão durante as missas. Eles também levam a Eucaristia aos enfermos e pessoas impossibilitadas de ir à igreja, garantindo que todos possam participar desse momento.</p>
                        </div>
                        <button onclick="popUp()">Saber mais</button>
                      </div> 
                </div>
            </div>
          <div class="gruposContainer">
              <div class="gruposDiv">
                <h2>Ministério do dízimo</h2>
                <img src="https://c.files.bbci.co.uk/110C3/production/_123872896_gettyimages-836430748.jpg" alt="Ministério da eucaristia">
                  <div class="contentCard">
                      <div>
                        <p>
                          O Ministério do Dízimo é responsável por conscientizar a comunidade sobre a importância da contribuição regular. O valor arrecadado ajuda a manter as atividades da igreja, apoiar obras sociais e garantir o funcionamento da paróquia.</p>
                      </div>
                      <button onclick="popUp()">Saber mais</button>
                    </div> 
              </div>
          </div>
        <div class="gruposContainer">
            <div class="gruposDiv">
              <h2>MJ - Ministério Jovem</h2>
              <img src="./assets/ministeriesGroupsPage/fotoJovem1.jpg" alt="Ministério da eucaristia">
                <div class="contentCard">
                    <div>
                      <p>
                        O Ministério de Jovens é voltado para a integração e formação espiritual dos jovens da comunidade. Através de encontros, retiros e atividades, o grupo busca aproxima os jovens da fé, promovendo momentos de partilha, reflexão e convivência cristã.</p>
                    </div>
                    <button onclick="popUp()">Saber mais</button>
                  </div> 
            </div>
        </div>
      <div class="gruposContainer">
          <div class="gruposDiv">
            <h2>Pastoral dos coroinhas</h2>
            <img src="https://cdn.arquidiocesesalvador.org.br/wp-content/uploads/2019/02/Coroinhas-Foto-Sara-Gomes-2.jpg" alt="Ministério dos coroinhas">
              <div class="contentCard">
                  <div>
                    <p>O Ministério de Coroinhas e Acólitos é composto por crianças e jovens que auxiliam nas celebrações litúrgicas. Eles ajudam o sacerdote no altar, cuidando dos objetos litúrgicos e contribuindo para que a missa aconteça de forma organizada e solene.</p>
                  </div>
                  <button onclick="popUp()">Saber mais</button>
                </div> 
          </div>
      </div>

  <div>
    <dialog>
      <P>Recurso disponível em breve!</P>
      <button onclick="closeModal()">Sair</button>
    </dialog>
  </div>
    <div class="gruposContainer">
        <div class="gruposDiv">
          <h2>Pastoral de louvor e adoração</h2>
          <img src="https://comshalom.org/wp-content/uploads/2019/02/23824155_158859744847739_5181226337171406848_n.jpg" alt="Ministério do louvor e adoração">
            <div class="contentCard">
                <div>
                  <p>O Ministério de Louvor e Adoração é responsável por animar as celebrações com músicas que elevam a espiritualidade da comunidade. Por meio do canto e dos instrumentos, eles conduzem os fiéis a uma experiência mais profunda de oração e conexão com Deus.</p>
                </div>
                <button onclick="popUp()">Saber mais</button>
              </div> 
        </div>
    </div>

  <div class="gruposContainer">
      <div class="gruposDiv">
        <h2>Pastoral da saúde</h2>
        <img src="https://img.freepik.com/fotos-gratis/mulher-cuidando-de-seu-amigo-doente_23-2148944820.jpg?ga=GA1.1.116615494.1715215519&semt=ais_hybrid" alt="Ministério da eucaristia">
          <div class="contentCard">
              <div>
                <p>A Pastoral da Saúde tem a missão de oferecer apoio espiritual, emocional e, muitas vezes, material às pessoas enfermas. Os membros visitam hospitais e casas, levando conforto, a Palavra de Deus e, quando necessário, a Eucaristia, cuidando daqueles que mais precisam de atenção e carinho.</p>
              </div>
              <button onclick="popUp()">Saber mais</button>
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
        <img src="./assets/ministeriesGroupsPage/instagram-svgrepo-com.svg" alt="Insta" />
        <a href="https://www.instagram.com/paroquiasantaluziaalvorada/"
          >Instagram</a
        >
      </div>
      <div>
        <img src="./assets/ministeriesGroupsPage/facebook-svgrepo-com.svg" alt="Facebook" />
        <a href="https://www.facebook.com/paroquiasantaluziaalvorada/"
          >Facebook</a
        >
      </div>
      <div>
        <img src="./assets/ministeriesGroupsPage/whatsapp-svgrepo-com.svg" alt="Wpp" />
        <a href="https://wa.me/+55 11 4966-2941">Whatsapp</a>
      </div>
      <div>
        <img src="./assets/ministeriesGroupsPage/email-svgrepo-com.svg" alt="Email" />
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

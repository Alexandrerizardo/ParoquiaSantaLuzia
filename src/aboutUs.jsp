<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paróquia Santa Luzia - Sobre nós</title>
    <link rel="stylesheet" href="./css/aboutUs.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap');
    </style>
    <script src="./js/aboutUs.js"></script>
</head>
<body>
    <header> 
        <h2>Paróquia Santa Luzia</h2> 
        <div class="buttonsNav">
            <button id="btnMenu" type="button" onclick="menu()"><img src="./assets/aboutUsPage/menu-svgrepo-com (1).svg" alt=""></button>
        </div>
    </header>
   
    <nav class="asideNav" onclick="closeMenu()" id="navTeste"></nav>
        <ul id="divNav">
        <h3>Menu do usuário</h3>
      <li id="contentNav">
         <a href="./coursePage.html"><button>Cursos</button></a>
      </li>
      <li id="contentNav">  
          <a href="./ministeries&GroupsPage.html"><button>Ministérios e grupos</button></a>
      </li>
      <li id="contentNav">
          <a href="./sacramentSchedulingPage.html"><button>Agendar Sacramento</button> </a>
      </li>
      <li id="contentNav">
          <a href="./index.html"><button>Sair</button></a>
      </li>
    </ul>
  </nav>
  <div class="titlePage">
    <h2>Sobre nós</h2>
    </div>
    <div class="containerMain">
        <div class="containerFotos">
            <div class="fotoParoco">
                <img id="padre" src="./assets/aboutUsPage/fotoNovaPadre.jpg" alt="FotoPadreMarcio">
                <div class="textPicture">
                    <h2>Padre Márcio Arielton</h2>
                </div>
            </div>
           
            <div class="fotoParoco">
                <img id="diacono" src="./assets/aboutUsPage/fotoNovaDiacono.jpg" alt="fotoDiacono">
                <div class="textPicture">
                    <h2>Diácono José Augusto</h2>
                </div>
            </div>
        </div>
        
        <div class="containerHistoria">
            <h3>Conheça nossa história</h3>
            <img src="./assets/aboutUsPage/Sta_luzia_alvorada.jpg" alt="foto da igreja">
            <p>
                A Paróquia Santa Luzia nasceu do desejo profundo de uma comunidade em busca de um espaço para celebrar sua fé. Localizada no bairro Parque Alvorada, em Guarulhos, sua história começou em 2003, quando um pequeno grupo de moradores, movidos pela devoção a Santa Luzia, se uniu com o sonho de construir uma igreja dedicada à santa protetora da visão. Com o apoio e a dedicação desses fiéis, a ideia se transformou em realidade, e a paróquia rapidamente se tornou um ponto de encontro para os devotos da região.
                Desde então, a igreja tem sido um símbolo de união e espiritualidade para a comunidade local, inspirada na devoção à sua padroeira, Santa Luzia, a protetora dos olhos e guia dos que buscam a luz da fé. Ao longo dos anos, uma paróquia não só cresceu em número de salvação, mas também em estrutura, oferecendo diferentes projetos sociais e religiosos, sempre com o objetivo de fortalecer a comunidade e promover os ensinamentos de Jesus Cristo.
                Hoje, a Paróquia Santa Luzia continua firme em sua missão, sendo um farol de luz e fé para todos que a procuram. Sob a intercessão de Santa Luzia, a comunidade segue unida, levando adiante o legado de sua padroeira e a chama da fé que jamais se apagar
            </p>
        </div>

        <div class="containerMissionValues">
            <div class="mission">
                <img src="./assets/aboutUsPage/dart-mission-goal-success-svgrepo-com (2).svg" alt="dardo" class="svgMissao">
                <h3>Missão</h3>
                <p>A Igreja Santa Luzia tem como missão viver e promover os ensinamentos de Cristo, oferecendo um ambiente de fé e acolhimento para todos. Buscamos fomentar a espiritualidade através dos sete sacramentos, da oração e da comunidade, enquanto nos dedicamos ao serviço dos necessitados e à construção de uma sociedade mais justa e amorosa.</p>
            </div>
            <div class="values">
                <img src="./assets/aboutUsPage/church-svgrepo-com (3).svg" alt="igreja" class="svgMissao">
                <h3>Valores</h3>
                <ul>
                    <li>Fé: Cultivamos uma fé sólida e comprometida com os ensinamentos de Jesus Cristo, buscando sempre aprofundar nossa relação com Deus.</li>
                    <br>
                    <li>Caridade: Vivemos o amor ao próximo através de ações concretas de ajuda e solidariedade, atendendo às necessidades dos mais vulneráveis em nossa comunidade.</li>
                    <br>
                    <li>Acolhimento: Valorizamos a hospitalidade e a inclusão, oferecendo um espaço aberto e acolhedor para todas as pessoas, independentemente de sua condição ou origem, seguindo os ensinamentos de cristo.</li>
            </div>
        </div>

        <div class="padroeira">
            <h2>Nossa padroeira</h2>
            <img src="./assets/aboutUsPage/Santa-Luzia.jpg" alt="Santa Luzia">
            <p>Santa Luzia nasceu na Itália, em Siracusa, no fim do século III, em uma família rica, que lhe ofereceu boa formação cristã, a ponto de ter feito um voto de viver em virgindade perpétua. Depois que seu pai faleceu, Luzia soube que estava prometida a um casamento. Sendo assim, ela quis um tempo para o discernimento. Então, convidou sua mãe para que fossem a Catânia, em romaria, em busca pela cura de sua mãe, que estava enferma.
                <br>
                Chegando lá, o milagre aconteceu e elas voltaram com a certeza da vontade de Deus quanto à virgindade e aos sofrimentos pelos quais passaria dali em diante. Depois disso ela vendeu tudo, doou aos pobres e passou por várias perseguições de autoridades por querer se manter virgem, mas nenhuma ameaça a fez mudar de ideia e casar. De forma cruel, uma espada tirou a vida de Santa Luzia, decapitada em 304.
                <br>
                Relatos contam que antes de matá-la teriam lhe arrancado os olhos. Por isso, ela é reconhecida pela vida que levou Jesus, a Luz do Mundo, até as últimas consequências, pois ela testemunhou diante dos acusadores dizendo: “Adoro a um só Deus verdadeiro, e a Ele prometi amor e fidelidade”.
                <br>
                Ainda segundo relatos, o episódio da cegueira, que a iconografia representa, deve estar ligado ao seu nome Luzia/Lúcia derivado de lux (= luz), elemento indissolúvel unido não só ao sentido da vista, mas também à faculdade espiritual de captar a realidade sobrenatural.</p>
        </div>

        <footer class="rodape">
                <div class="textFooter">
                    <h3>Horário das Missas</h3>
                    <ul>
                        <li>Quinta: 15h;</li>
                        <li>Sexta: 19h30;</li>
                        <li>Sábado: 08h;</li>
                        <li>Domingo: 07h, 10h30 e 19h;</li>
                        <li>Todo dia 13: 15h – Missa Votiva de Santa Luzia (exceto se for sábado/domingo);</li>
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
                    <br>
                    <br>
                    <div id="contato">
                        <div>
                            <img src="./assets/aboutUsPage/instagram-svgrepo-com.svg" alt="Insta">
                            <a href="https://www.instagram.com/paroquiasantaluziaalvorada/">Instagram</a>
                        </div>
                        <div>
                            <img src="./assets/aboutUsPage/facebook-svgrepo-com.svg" alt="Facebook">
                            <a href="https://www.facebook.com/paroquiasantaluziaalvorada/">Facebook</a>
                        </div>
                        <div>
                            <img src="./assets/aboutUsPage/whatsapp-svgrepo-com.svg" alt="Wpp">
                            <a href="https://wa.me/+55 11 4966-2941">Whatsapp</a>
                        </div>
                        <div>
                            <img src="./assets/aboutUsPage/email-svgrepo-com.svg" alt="Email">
                            <a href="santaluziaalvorada@gmail.com">santaluziaalvorada@gmail.com</a>
                        </div>
                    </div>
                    
                </div>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58565.283012818065!2d-46.46059498486445!3d-23.44855137453208!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce620c84ed8d19%3A0x22bd8beb66b911e!2sIgreja%20cat%C3%B3lica%20Romana%20Par%C3%B3quia%20Santa%20Luzia%20-%20Alvorada!5e0!3m2!1spt-BR!2sbr!4v1726085986557!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
        </footer>
</body>
</html>
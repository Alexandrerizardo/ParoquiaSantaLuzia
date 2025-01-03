<%@page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paróquia Santa Luzia - Página de administrador</title>
    <link rel="stylesheet" href="./css/adminPage.css" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lustria&family=Sedan+SC&display=swap");
    </style>
    <script src="./js/adminPage.js"></script>
  </head>
  <body id="body">
    <header>
      <h2>Paróquia Santa Luzia</h2>
      <div class="buttonsNav">
        <button id="btnMenu" type="button" onclick="menu()">
          <img src="fotos/menu-svgrepo-com (1).svg" alt="" />
        </button>
      </div>
    </header>
    <div class="containerMain">
      <div class="titlePage">
        <h2>Página de administrador</h2>
      </div>
      <nav class="asideNav">
        <ul id="divNav">
          <h3>Atividades de administrador</h3>
          <li id="contentNav">
             <a href=""><button> <img src="./assets/adminPage/eye-svgrepo-com.svg"/>Ver inscrições</button></a>
          </li>
          <li id="contentNav">  
              <a href=""><button><img src="./assets/adminPage/notebook-1-svgrepo-com.svg"/> Adicionar cursos</button></a>
          </li>
          <li id="contentNav">
              <a href=""><button><img src="./assets/adminPage/groups-svgrepo-com.svg"/>Adicionar ministérios ou grupos</button> </a>
          </li>
          <li id="contentNav">
              <a href=""><button><img src="./assets/adminPage/agenda-calendar-date-svgrepo-com.svg"/> Ver agendamentos</button></a>
          </li>
          <li id="contentNav">
              <a href="./index.html"><button> <img src="./assets/adminPage/exit-svgrepo-com.svg"/> Sair</button></a>
          </li>
        </ul>
      </nav>
    </div>
  </body>
</html>

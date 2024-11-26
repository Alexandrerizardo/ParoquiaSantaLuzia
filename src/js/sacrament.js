function menu() {
  var menuDiv = document.getElementById("divNav");

  if (menuDiv.style.width === "0%" || menuDiv.style.width === "") {
    menuDiv.style.width = "20%";
    menuDiv.style.opacity = "1";
  } else {
    menuDiv.style.width = "0%";
    menuDiv.style.opacity = "0";
  }
}

document.addEventListener("click", function (event) {
  const menuDiv = document.getElementById("divNav");
  const menuButton = document.getElementById("btnMenu");

  if (!menuDiv.contains(event.target) && !menuButton.contains(event.target)) {
    menuDiv.style.width = "0%";
    menuDiv.style.opacity = "0";
  }
});


function formValidation() {
  let nome = document.getElementById("txtName").value;
  let email = document.getElementById("txtEmail").value;
  let tel = document.getElementById("txtTel").value;
  let select = document.getElementById("selectForm").value;
  document.getElementById("txtLS").value = sessionStorage.getItem('usuario');
  console.log(sessionStorage.getItem('usuario'))
  let send = true;

  
  const regexTel = /^\d{2}\ \d{5}\-\d{4}$/;

  if (nome.length == 0) {
    send = false;
    document.querySelector("#erroNome").textContent = "Insira um nome.";
  } else {
    document.querySelector("#erroNome").textContent = "";
  }

  if (email.indexOf("@") < 0 || email.length == 0) {
    send = false;
    document.querySelector("#erroEmail").textContent = "Email inválido.";
  } else {
    document.querySelector("#erroEmail").textContent = "";
  }

  if (tel.length == 0) {
    send = false;
    document.querySelector("#erroTel").textContent = "Telefone inválido.";
  } else if (regexTel.test(tel)) {
    document.querySelector("#erroTel").textContent ="Número de telefone inválido.";
  } else {
    document.querySelector("#erroTel").textContent = "";
  }

  if (select == "") {
    send = false;
    document.querySelector("#erroSelect").textContent = "Escolha um sacramento";
  } else {
    document.querySelector("#erroSelect").textContent = "";
  }

  if (send) {
    return true;
  }else{
    return false;
  }
}

function formatTel(input) {
  let value = input.value.replace(/\D/g, "");

  if (value.length > 2 && value.length <= 7) {
    input.value = value.replace(/(\d{2})(\d+)/, "($1) $2");
  } else if (value.length > 7 && value.length <= 11) {
    input.value = value.replace(/(\d{2})(\d{5})(\d+)/, "($1) $2-$3");
  } else {
    input.value = value;
  }
}

function popUp() {
  const modal = document.querySelector("dialog");
  modal.showModal();
}

function closeModal() {
  const modal = document.querySelector("dialog");
  const modal2 = document.querySelector("#d2");
  modal.close();
  modal2.close();
}

function loginClear() {
  document.querySelector("#erroSenha").textContent = "";
  document.querySelector("#erroEmail").textContent = "";
  document.querySelector("#erroSenhaConfirm").textContent = "";
}

function getOut(){
  sessionStorage.removeItem('usuario');
}


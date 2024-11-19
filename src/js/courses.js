function menu() {
  const menuDiv = document.getElementById("divNav");
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

function popUp(idPopUp) {

  const modal = document.querySelector("dialog");
  document.querySelector("#titlePopUp").textContent = obterNomeCurso(idPopUp);
  document.querySelector("#idCurso").value = idPopUp;
  modal.showModal();
}

function obterNomeCurso(idPopUp) {
  switch (idPopUp) {
    case 1:
      return "Catequese de adultos";
    case 2:
      return "Catequese de Crianças";
    case 3:
      return "Educação financeira";
    case 4:
      return "Curso de matrimônio";
    case 5:
      return "Teologia e filosofia";
    case 6:
      return "Canto e instrumentos";
  }
}
function closeModal() {
  const modal = document.querySelector("dialog");
  document.getElementById("nameUser").value = "";
  document.getElementById("cpfUser").value = "";
  document.getElementById("addressUser").value = "";
  document.getElementById("telUser").value = "";
  document.getElementById("emailUser").value = "";

  loginClear();
  document.querySelector("dialog").style.height = "50vh";

  modal.close();
}

function verificarCurso() {
  loginClear();
  const nome = document.getElementById("nameUser").value;
  const cpf = document.getElementById("cpfUser").value;
  const endereco = document.getElementById("addressUser").value;
  const telefone = document.getElementById("telUser").value;
  const email = document.getElementById("emailUser").value;
  let send = true;

  const regexCPF = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/;
  const regexTel = /^\d{2}\ \d{5}\-\d{4}$/;

  if (nome.length == 0) {
    send = false;
    document.querySelector("#erroNome").textContent = "Nome inválido.";
  }

  if (email.indexOf("@") < 0 || email.length == 0) {
    send = false;
    document.querySelector("#erroEmail").textContent = "Email inválido.";
    document.querySelector("dialog").style.height = "60vh";
    document.querySelector("#btnSubmit").style.marginTop = "1vh";
  } else if (email.indexOf(" ") >= 0) {
    send = false;
    document.querySelector("#erroEmail").textContent =
      "Email contém espaço em branco.";
    document.querySelector("dialog").style.height = "60vh";
    document.querySelector("#btnSubmit").style.marginTop = "1vh";
  }

  if (cpf.length == 0) {
    send = false;
    document.querySelector("#erroCPF").textContent = "CPF inválido.";
    document.querySelector("dialog").style.height = "60vh";
  } else if (!regexCPF.test(cpf)) {
    send = false;
    document.querySelector("#erroCPF").textContent = "CPF inválido.";
    document.querySelector("dialog").style.height = "60vh";
  }

  if (endereco.length == 0) {
    send = false;
    document.querySelector("#erroAddress").textContent = "Endereço inválido.";
    document.querySelector("dialog").style.height = "60vh";
  }

  if (telefone.length == 0) {
    send = false;
    document.querySelector("#erroTel").textContent =
      "Número de telefone inválido.";
    document.querySelector("dialog").style.height = "60vh";
  } else if (!regexTel.test(telefone)) {
    document.querySelector("#erroTel").textContent =
      "Número de telefone inválido.";
    document.querySelector("dialog").style.height = "60vh";
  }

  if (send) {
    loginClear();
    document.querySelector("dialog").style.height = "50vh";
    closeModal();
    alert("Inscrição feita!");
  }
}
function formatCPF(input) {
  let value = input.value.replace(/\D/g, "");

  if (value.length > 3 && value.length <= 6) {
    input.value = value.replace(/(\d{3})(\d+)/, "$1.$2");
  } else if (value.length > 6 && value.length <= 9) {
    input.value = value.replace(/(\d{3})(\d{3})(\d+)/, "$1.$2.$3");
  } else if (value.length > 9) {
    input.value = value.replace(/(\d{3})(\d{3})(\d{3})(\d+)/, "$1.$2.$3-$4");
  } else {
    input.value = value;
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

function loginClear() {
  document.querySelector("#erroNome").textContent = "";
  document.querySelector("#erroEmail").textContent = "";
  document.querySelector("#erroCPF").textContent = "";
  document.querySelector("#erroAddress").textContent = "";
  document.querySelector("#erroTel").textContent = "";
}

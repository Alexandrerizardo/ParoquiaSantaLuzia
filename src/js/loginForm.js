function verificarCadastro() {
    loginClear();
    let nome  = document.getElementById("nomeLogin").value;
    let endereco = document.getElementById("enderecoLogin").value;
    let tel = document.getElementById("telefoneLogin").value;
    let email = document.getElementById("emailLogin").value;
    let senha = document.getElementById("senhaLogin").value;
    let senhaConfirm = document.getElementById("senhaConfirmLogin").value;
    let send = true;

    const regexTel = /^\d{2}\ \d{5}\-\d{4}$/;

    if (nome.length == 0) {
        send = false;
        document.querySelector("#erroNome").textContent = "Insira um nome.";
      }else if(nome.length > 0 && nome.length < 3){
        send = false;
        document.querySelector("#erroNome").textContent = "O nome deve conter no mínimo 3 caracteres.";
      }else if(/\d/.test(nome)){
        send = false;
        document.querySelector("#erroNome").textContent = "O nome contém números";
      }else {
        document.querySelector("#erroNome").textContent = "";
  }

      if (endereco.length == 0) {
        send = false;
        document.querySelector("#erroEndereco").textContent = "Endereço inválido.";
      }else{
        document.querySelector("#erroEndereco").textContent = "";
      }
    
      if (tel.length == 0) {
        send = false;
        document.querySelector("#erroTelefone").textContent = "Telefone inválido.";
      } else if (regexTel.test(tel)) {
        send = false;
        document.querySelector("#erroTelefone").textContent ="Número de telefone inválido.";
      } else {
        document.querySelector("#erroTelefone").textContent = "";
      }

    if (senha.length == 0) {  
        send = false;
        document.querySelector("#erroSenha").textContent = "Senha inválida.";
    } else if (senha.indexOf(" ") >= 0) {
        send = false;
        document.querySelector("#erroSenha").textContent = "Senha inválida, tire os espaços.";
    } else if (senha.search(/\W|_/) < 1) {
        send = false;
        document.querySelector("#erroSenha").textContent = "Senha inválida. Coloque um caractere especial.";
    }

    if (email.indexOf("@") < 0 || email.length == 0) {
        send = false;
        document.querySelector("#erroEmail").textContent = "Email inválido.";
    }else if (email.indexOf(" ") >= 0) {
        send = false;
        document.querySelector("#erroEmail").textContent = "Email contém espaço em branco.";
    }

    if (senhaConfirm != senha || senhaConfirm.length == 0) {
        send = false;
        document.querySelector("#erroSenhaConfirm").textContent = "Confira a senha.";
    }

    if (send) {
      popUp();
      return true;
    }else{
      return false;
    }

}

function popUp(){
    const modal = document.querySelector('dialog');
    modal.showModal();
}

function closeModal(){
    const modal = document.querySelector('dialog');
    const modal2 = document.querySelector('#d2');
    modal.close();
    modal2.close();
}

function loginClear() {
    document.querySelector("#erroNome").textContent = "";
    document.querySelector("#erroEndereco").textContent = "";
    document.querySelector("#erroTelefone").textContent = "";
    document.querySelector("#erroSenha").textContent = "";
    document.querySelector("#erroEmail").textContent = "";
    document.querySelector("#erroSenhaConfirm").textContent = "";
}

function telaLogin() {

    let form = document.getElementById("loginForm");
    let formCadastro = document.getElementById("login");
    let welcomeDiv = document.getElementById("containerWelcome");
    let btn = document.getElementById("btnLogin");

    btn.remove();
    formCadastro.remove();
    welcomeDiv.remove();

    if (form.style.display === "none" || form.style.display === "") {
        form.style.display = "flex"; 
    } else {
        form.style.display = "none"; 
    }
}

function verificarFormLogin(){
    let email = document.getElementById("email").value;
    let senha = document.getElementById("senha").value;
    let send = true;
   // let lsEmail = localStorage.setItem()

    if (senha.length == 0) {  
        send = false;
        document.querySelector("#erroSenha").textContent = "Senha inválida.";
    } else if (senha.indexOf(" ") >= 0) {
        send = false;
        document.querySelector("#erroSenha").textContent = "Senha inválida, tire os espaços.";
    }else{
        document.querySelector("#erroSenha").textContent = "";
    }

    if (email.indexOf("@") < 0 || email.length == 0) {
        send = false;
        document.querySelector("#erroEmail").textContent = "Email inválido.";
    }else{
        document.querySelector("#erroEmail").textContent = "";
    }

    if (send) {
        const modal = document.querySelector('#d2');
        modal.showModal();
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

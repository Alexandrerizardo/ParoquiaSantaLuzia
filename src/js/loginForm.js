function verificarCadastro() {
    loginClear();
    let email = document.getElementById("emailLogin").value;
    let senha = document.getElementById("senhaLogin").value;
    let senhaConfirm = document.getElementById("senhaConfirmLogin").value;
    let send = true;

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
    }

    if (senhaConfirm != senha || senhaConfirm.length == 0) {
        send = false;
        document.querySelector("#erroSenhaConfirm").textContent = "Confira a senha.";
    }

    if (send) {
        popUp();
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

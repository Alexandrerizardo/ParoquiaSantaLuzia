function verificarLogin() {
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
        document.loginForm.submit();
    }

}

function loginClear() {
    document.querySelector("#erroSenha").textContent = "";
    document.querySelector("#erroEmail").textContent = "";
    document.querySelector("#erroSenhaConfirm").textContent = "";
}

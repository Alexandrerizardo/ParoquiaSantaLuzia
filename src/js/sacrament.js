function menu(){
    let menuDiv = document.getElementById('divNav');

    if (menuDiv.style.width === '0%' || menuDiv.style.width === "") {
        menuDiv.style.width = '20%';
       menuDiv.style.opacity = '1';
    } else {
        menuDiv.style.width = '0%';
        menuDiv.style.opacity = '0';
    }       
}

function formValidation(){


    let nome = document.getElementById("txtName").value;
    let email = document.getElementById("txtEmail").value;
    let tel = document.getElementById("txtTel").value;
    let select = document.getElementById("selectForm").value;
    let send = true;

    if (nome.length == 0) {  
        send = false;
        document.querySelector("#erroNome").textContent = "Insira um nome.";
    }else{
        document.querySelector("#erroNome").textContent = "";
    }

    if (email.indexOf("@") < 0 || email.length == 0) {
        send = false;
        document.querySelector("#erroEmail").textContent = "Email inválido.";
    }
    else{
        document.querySelector("#erroEmail").textContent = "";
    }

    if(tel.length == 0 || tel.length < 11 || tel.length > 11) {
        send = false;
        document.querySelector("#erroTel").textContent = "Telefone inválido.";
    }
    else{
        document.querySelector("#erroTel").textContent = "";
    }

    if(select == ""){
        send = false;
        document.querySelector("#erroSelect").textContent = "Escolha um sacramento";
    }
    else{
        document.querySelector("#erroSelect").textContent = "";
    }

    if(send){
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
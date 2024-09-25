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


    if (email.indexOf("@") < 0 || email.length == 0) {
        send = false;
        document.querySelector("#erroEmail").textContent = "Email inválido.";
    }
}
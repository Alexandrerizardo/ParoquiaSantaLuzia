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
document.addEventListener('click', function(event) {
    const menuDiv = document.getElementById('divNav');
    const menuButton = document.getElementById('btnMenu');

    if (!menuDiv.contains(event.target) && !menuButton.contains(event.target)) {
        menuDiv.style.width = '0%';
        menuDiv.style.opacity = '0';
    }
});

function closeModal(){
    const modal = document.querySelector('dialog');
    modal.close();
}

function getOut(){
    sessionStorage.removeItem('usuario');
}

function popUp(idPopUp) {

    const modal = document.querySelector("dialog");
    document.querySelector("#titlePopUp").textContent = obterNomeCurso(idPopUp);
    document.querySelector("#idCurso").value = obterNomeCurso(idPopUp);
    document.querySelector("#idCurso").textContent = obterNomeCurso(idPopUp);
    modal.showModal();
  }
  
  function obterNomeCurso(idPopUp) {
    switch (idPopUp) {
      case 1:
        return "Ministério da Eucaristia";
      case 2:
        return "Ministério do dízimo";
      case 3:
        return "MJ - Ministério Jovem";
      case 4:
        return "Pastoral dos coroinhas";
      case 5:
        return "Pastoral de louvor e adoração";
      case 6:
        return "Pastoral de louvor e adoração";
    }
  } 
  
  function ministerio() {
    document.getElementById("txtLS").value = sessionStorage.getItem('usuario');
    let send = true;

    if(document.getElementById("txtLS").value == null){
       send = false;
    }
  
    if (send) {
      return true;
    }else{
      return false;
    }
  }


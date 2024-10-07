var menuDiv = document.getElementById('divNav');
function menu(){

    if (menuDiv.style.width === '0%' || menuDiv.style.width === "") {
        menuDiv.style.width = '20%';
       menuDiv.style.opacity = '1';
    } else {
        menuDiv.style.width = '0%';
        menuDiv.style.opacity = '0';
    }        
}

function popUp(){
    const modal = document.querySelector('dialog');
    modal.showModal();
}

function closeModal(){
    const modal = document.querySelector('dialog');
    modal.close();
}

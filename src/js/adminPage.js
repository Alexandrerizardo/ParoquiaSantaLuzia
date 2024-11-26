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

function getOut(){
    sessionStorage.removeItem('usuario');
}

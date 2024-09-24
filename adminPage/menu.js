let menuOpen = true;
let escolha = document.querySelector('#btnMenu').addEventListener('click', menu);
   escolha = !menuOpen;


function menu(){
 
    if(menuOpen){
        document.querySelector("#divNav").style.opacity = "0";
        return;
    }
    else{
        document.querySelector("#divNav").style.opacity = "1"
    }
    
}
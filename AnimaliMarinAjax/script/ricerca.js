function suggerisci(str){
    if(str.length == 0){
        document.getElementById("hint").innerHTML = ""; 
        return;   
    }
    else{
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                document.getElementById("hint").innerHTML = this.responseText; 

            }
        };
        xmlhttp.open("GET", "hint.php?q=" + str, true); 
        xmlhttp.send(); 
    }
    
}
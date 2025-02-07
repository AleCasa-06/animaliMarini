<html>
    <head>
        <title>cerca animali</title>
    </head>
        <body>
            <a href="public\ricerca.php">Cerca animali</a><br>
            

            
        </body>  
        
        
</html>

<?php
$servername = "localhost";
$usernameDB = "root";
$passwordDB = "";
$dbname = "studiomarino";

$conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);


$stmt = $conn->query("SELECT * FROM animalimarini"); 
$res = $stmt->fetch_all(MYSQLI_ASSOC); 


for ($i = 0; $i < count($res); $i++){
    echo "nome:" . $res[$i]["Nome"] . "<br>"; 
    echo "latitutine:" . $res[$i]["Latitudine"] . "<br>"; 
    echo "longitudine:" . $res[$i]["Longitudine"] . "<br>"; 
    echo "specie:" . $res[$i]["Specie"] . "<br>"; 
    echo "descrizione:" . $res[$i]["Descrizione"] . "<br>"; 
    echo "data:" . $res[$i]["DataAvvistamento"] . "<br>"; 

}

?>
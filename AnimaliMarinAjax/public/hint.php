


<?php
$servername = "localhost";
$usernameDB = "root";
$passwordDB = "";
$dbname = "studiomarino";


if($_SERVER["REQUEST_METHOD"] == "GET"){

    $hint = urldecode($_GET["q"]);

    if($hint != null){
        $conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);
        $stmt = $conn->query("SELECT * FROM animalimarini WHERE nome LIKE '%$hint%'"); 
        $res = $stmt->fetch_all(MYSQLI_ASSOC); 

        for($i = 0; $i < count($res); $i++){
            echo $res[$i]["Nome"] . "<br>"; 
        }
    }
    

}
?>
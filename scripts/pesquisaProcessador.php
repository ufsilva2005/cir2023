<?php
    $db_connect = mysqli_connect("localhost", "controleCir", "cpd", "billg3");
    $request = mysqli_real_escape_string($db_connect, $_POST["query"]);
    $query = "SELECT * FROM tipoProcessadores WHERE descricao LIKE '%$request%'";
    $result = mysqli_query($db_connect, $query);
    $descricao = array();
    if(mysqli_num_rows($result) > 0)
        {
            while($row = mysqli_fetch_assoc($result))
                {
                    $descricao[] = $row["descricao"];
                }
            echo json_encode($descricao);
        }
?>


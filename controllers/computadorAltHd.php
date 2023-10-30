<?php
    session_start();
	/*include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-computador.php";*/	

	//recebe dados da view
    echo"<br> dados do hd <br>";
    print_r($_SESSION['capHdBd']); 
    echo"<br> dados <br>";
    $capHdBd = $_SESSION['capHdBd'];
    $tipoHD = serialize($capHdBd); 
    print_r($tipoHD);
    echo"<br> dados ip <br>";
    echo $_SESSION['idCompAlt'];

    $computadorDAO = new ControleCirDAO();
    $computadorDAO->ComputadorUpdateHd($_SESSION['idCompAlt'],$tipoHD); 
?>
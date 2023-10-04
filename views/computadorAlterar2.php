<?php
    session_start();
    //include "../template/menuPrincipal.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
    require_once '../controllers/computadorAlterar.php';
    include_once "../dao/DAO-controleCir.php";
    echo $action;
    print_r($_SESSION['antTipoHD']);
    echo $_SESSION['antMemoria']; 
?>

      
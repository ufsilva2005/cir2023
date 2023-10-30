<?php
	/*session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-computador.php";*/	
		

    //$altHd = "";
	/*$capHd = array();    
    $i=0;
    $_SESSION['i'] = $i;
    $_SESSION['capHd'] = $capHd;*/

    $capHd = array();    
    $i=0;
    $_SESSION['i'] = $i;
    $_SESSION['antTipoHD'] = $capHd;

	//recebe dados da view
	$altHd =  $_POST['altHd'];
    if($_SESSION['altHd'] == 0)
        {
            $_SESSION['altHd'] = $altHd;
        }
    else
        {
            $altHd = $_SESSION['altHd'];
        }
    echo "<hr><hr>";    
    echo "<br>altHd 2 => " . $altHd;
    if($altHd == "")
        {

        }

    elseif($altHd == 1)
        {
            echo "<script type='text/javascript'>alert('NEHUM HD ALTERADO');</script>";
            echo "<script>location = '../views/computadorListar.php';</script>";     
        }

    elseif($altHd == 2)
        {
               echo "<hr><hr>";  
               print_r($_SESSION['antTipoHD']); 
               $altHd = $_SESSION['altHd'];
        }

     elseif($altHd == 3)
        {
                echo "<hr><hr>";  
                print_r($_SESSION['antTipoHD']);
                $_SESSION['antTipoHD'] = "";
                print_r($_SESSION['antTipoHD']);
                $altHd = $_SESSION['altHd'];
        }
    else 
        {
            $altHd = "";
        }

	//$dadosComputador = $_POST['dadosComputador'];
	//$localComputador = $_POST['localComputador'];
	//$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	//$respCadastro = $_SESSION['respCadastro'];

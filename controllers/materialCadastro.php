<?php
  	require_once "../dao/DAO-controleCir.php";
	include "../models/class-material.php";	
	include "../funcao/funcao.php";
    $numSerie = 0;
    $unidade = 0;
    $quantidade = 0;

    session_start();	
   	$codigoImp = $_POST['codigoImp'];
	$descImp = converteMaiuscula(filter_input(INPUT_POST, 'descImp'));
    $codigoComp = converteMaiuscula(filter_input(INPUT_POST, 'codigoComp'));	
	$descComp = converteMaiuscula(filter_input(INPUT_POST, 'descComp'));	
	//$numSerie =  $_POST['serie'];	
	/*if ($numSerie == "")
		{
			$numSerie = 0;
		}
	$unidade =  converteMaiuscula($_POST['unidade']);	
	$quantidade = $_POST['quantidade'];*/

    //verifiocar se material existe
    if($descImp == "" && $codigoComp =="" && $descComp == "" )
        {
            echo "<script type='text/javascript'>alert('DADOS NÃO PODEM SER EM BRANCO');</script>";
            echo "<script>location = '../views/materialCadastrar.php';</script>";   
        }

    else if($descImp != "" && $codigoComp =="" && $descComp == "" )
        {
            //VERIFICAR SE DESCRIÇÃO EXISTE
            require_once('../dao/conexao.class.php');
            try {
                    $pdo = new Conexao(); 
                    $resultado = $pdo->select("SELECT * FROM material WHERE descricao = '$descImp'");
                    $pdo->desconectar();
                                        
                }
            catch (PDOException $e)
                {
                    echo $e->getMessage();
                }
           
            if(!empty($resultado))
                {
                    echo "<script type='text/javascript'>alert('ESTE MATERIAL JÁ ESTA CADASTRADO');</script>";
                    echo "<script>location = '../views/materialCadastrar.php';</script>"; 
                }
            else
                {
                    //cadastrar material
                    $material = new Material($idMaterial, $codigoImp, $descImp, $numSerie, $unidade, $quantidade);
                    //echo "<br>dados material <br>";		
                    //$material->exibir();
                    //echo "<br>";
                    $materialDAO = new ControleCirDAO();
                    $materialDAO->CadastrarMaterial($material);
                    echo "<script type='text/javascript'>alert('MATERIAL CADASTRADO');</script>";
                    echo "<script>location = '../views/materialCadastrar.php';</script>"; 
                }

            //echo  $result;
        }

    else if($descImp == "" && $codigoComp !="" && $descComp != "" )
        {
            echo "<br>codigoComp => " . $codigoComp . "<br>";
	        echo "<br>descComp => " . $descComp ."<br>";
        }

    else
        {
            echo "<script type='text/javascript'>alert('DADOS DE MATERIAL DE COMPUTADOR INCORRETOS');</script>";
            echo "<script>location = '../views/materialCadastrar.php';</script>"; 
        }
	
    
	//echo "<br>codigoImp => " . $codigoImp . "<br>";
	//echo "<br>descImp => " . $descImp ."<br>"; $nomePaciente = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_STRING);
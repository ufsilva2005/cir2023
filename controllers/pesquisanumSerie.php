<?php
	//recebemos nosso parametro vindo do form
	$parametro = isset($_POST['numSerie']) ? $_POST['numSerie'] : null;
	//echo $parametro;
	 if($parametro == "")
        {
			sleep(5);
            //echo "<script language=javascript>alert( 'O CAMPO NUMERO NAO PODE SER EM BRANCO !' );</script>";
            echo "<script language = JavaScript> document.cadastro.numSerie.focus();</script>";
            exit;            
        }	
	$msg = "";
	//$msg1 = $parametro;				
    //requerimos a classe de conexão
    require_once('../dao/conexao.class.php');
    try {
            $pdo = new Conexao(); 
            $resultado = $pdo->select("SELECT * FROM impressoras WHERE numSerie = '$parametro'");
            $pdo->desconectar();
								
        }
    catch (PDOException $e)
        {
            echo $e->getMessage();
        }
        
    //resgata os dados na tabela
    if(count($resultado))
        {
            foreach ($resultado as $res) 
                {
                    echo "<script language = javascript> alert('JÁ EXISTE UMA IMPRESSORA NO CADASTRO COM ESTE NÚMERO !!!' );</script>";
                    echo "<script language = javascript> document.cadastro.numSerie.value='' </script>";
                    echo "<script language = JavaScript> document.cadastro.numSerie.focus();</script>";
					exit;
                }	
        } 
   
?>

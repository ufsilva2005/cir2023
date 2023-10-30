<?php
	//recebemos nosso parametro vindo do form
	$parametro1 = isset($_POST['nomeCir']) ? $_POST['nomeCir'] : null;
	//echo $parametro;
	 if($parametro1 == "")
        {
			sleep(5);
            //echo "<script language=javascript>alert( 'O CAMPO NUMERO NAO PODE SER EM BRANCO !' );</script>";
            echo "<script language = JavaScript> document.cadastro.nomeCir.focus();</script>";
            exit;            
        }	
	$msg = "";
				
    //requerimos a classe de conexão
    require_once('../dao/conexao.class.php');
    try {
            $pdo = new Conexao(); 
            $resultado = $pdo->select("SELECT * FROM computador WHERE nomeComputador = '$parametro1'");
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
                    echo "<script language = javascript> alert( 'JÁ EXISTE UM COMPUTADOR NO CADASTRO COM ESTE NOME !!!' );</script>";
                    echo "<script language = javascript> document.cadastro.nomeCir.value='' </script>";
                    echo "<script language = JavaScript> document.cadastro.nomeCir.focus();</script>";
					exit;
                }	
        } 
   
?>

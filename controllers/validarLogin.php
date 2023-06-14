<?php
    session_start();
    include "../funcao/funcao.php";
    include "../dao/DAO-controleCir.php";
	
    #Define variáveis para análise  
    $usuarioLogin = $_POST['login'];
    $senhaLogin = $_POST["senha"];    
    $nomeTabela = "funcionario";   

    $verLoginDAO = new ControleCirDAO();
    foreach($verLoginDAO->VerificarLoginSenha($nomeTabela, $usuarioLogin) as $logar)
        { 	
            $idFuncionario = $logar->idFuncionario;
            $nomeFuncionario = $logar->nomeFuncionario ;
            $login = $logar->login;
            $hash = $logar->senha;	
            $idAcesso = $logar->idAcesso;			
        }
    $numUser = $_SESSION['numUser'];
    
    if($numUser != 0)
        {
            $verificaSenha = decriptoSenha($senhaLogin, $hash);
        }       

    if($numUser != 0 &&  $verificaSenha != 0) 
        {
            $nomeTabela = "tipoAcesso";
            $permissaoDAO = new ControleCirDAO();
            foreach($permissaoDAO->VerificarDados($nomeTabela, $idAcesso) as $resp)
                { 	
                    $funcionarios = $resp->gerenFuncionarios;
                    $cargos = $resp->gerenCargos;
                    $entMaterial = $resp->gerenEntMaterial;
                    $saiMaterial = $resp->gerenSaiMaterial;
                    $relaMaterial = $resp->gerenRelaMaterial;
                    $computador = $resp->gerenComputador;
                    $impressora = $resp->gerenImpressora;
                }
            $_SESSION['funcionarios'] = $funcionarios;
            $_SESSION['cargos'] = $cargos;
            $_SESSION['entMaterial'] = $entMaterial; 
            $_SESSION['saiMaterial'] = $saiMaterial;   
            $_SESSION['relaMaterial'] = $relaMaterial;   
            $_SESSION['computador'] = $computador;  
            $_SESSION['impressora'] = $impressora; 
            $_SESSION['nomeFuncionario'] = $nomeFuncionario; 
            $_SESSION['idFuncionario'] = $idFuncionario;

            header("Location: ../template/menuPrincipal.php");  
            
            //echo "<br>funcionarios => " . $_SESSION['funcionarios']; 
            //echo "<br>cargos => " . $_SESSION['cargos']; 
            //echo "<br>entMaterial => " .  $_SESSION['entMaterial']; 
            //echo "<br>saiMaterial => " . $_SESSION['saiMaterial']; 
            //echo "<br>relaMaterial => " .  $_SESSION['relaMaterial']; 
            //echo "<br>computador => " .  $_SESSION['computador']; 
            //echo "<br>impressora => " .  $_SESSION['impressora']; 
        }

    else
        {
            echo "<script type='text/javascript'>alert('USUÁRIO OU SENHA INVÁLIDO(S) ');</script>";
            echo "<script>location = '../index.php';</script>";     
        }
?>

<?php
    //CRIPTGRAFAR SENHAS
	function criptoSenha($senha )
		{
			$options = [
				'cost' => 12,
			];
			$hash = password_hash($senha , PASSWORD_BCRYPT, $options);
			return $hash;
		}

	//VERIFICAR SEHAS
	function decriptoSenha($senha, $hash)
		{
			if (password_verify($senha, $hash)) 
				{
					$verSenha = 1;
				} 
			else 
				{
					$verSenha = 0;
				}
			return $verSenha;
		}

	//CONVERTE MAIUSCULA
	function converteMaiuscula($nomeA) 
		{
			$palavra =  strtr(strtoupper($nomeA),"àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿ","ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞß");
			return $palavra;
		}

	//PEGAR SÓ NÚMEROS DE UMA STRING
	function soNumero($str) 
		{
			$soNumero = preg_replace("/[^0-9]/", "", $str);
			return $soNumero;
		}
		
	//formatamdo data
	function formatarData($data)
		{
				$rData = implode("-", array_reverse(explode("/", trim($data))));
				return $rData;
		}
	function formatarData2($BdAltdataNascimento1)
		{
			$rData2 = implode("/",array_reverse(explode("-",$BdAltdataNascimento1)));  
			return $rData2;
		}
?>
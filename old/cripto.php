<?php
    $senha = "#Cpd2023";
	$options = [
				'cost' => 12,
			];
	$hash = password_hash($senha , PASSWORD_BCRYPT, $options);
	echo $hash;
?>
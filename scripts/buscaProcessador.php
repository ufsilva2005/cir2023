<?php
$db_host="localhost";
$db_port="3306";
$db_name="controleCir";
$db_user="cpd";
$db_password="billg3";

$dbcon = mysqli_connect( $db_host, $db_user, $db_password );
mysqli_select_db($dbcon,$db_name);
mysqli_query($dbcon,"SET NAMES 'utf8'");

$nome = mysqli_real_escape_string($dbcon,$_POST["nome"]);

// se enviar nome vazio, não carregar nada
if(trim($nome)==''){ die(); }

$query = "SELECT * FROM tipoProcessadores WHERE descricao LIKE '%$nome%' ORDER BY descricao ASC";

$result = mysqli_query($dbcon,$query);

$options='';

while($linha = mysqli_fetch_assoc($result))
{
     $options.='<option value="'.$linha["idTipoProcessador"].'">'.$linha["descricao"].'</option>';
}

echo $options;  // isto voltará na variável data do ajax
?>
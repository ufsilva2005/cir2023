<?php
	//include "../template/menuPrincipal.php";
	//include "../funcao/funcao.php";
   
   // if($_SESSION['impressora'] != "sim")
        //{
            //echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            //echo "<script>location = '../template/menuPrincipal.php';</script>";  
        //}
	
   //$hist =  $_GET['action'];
   	include "../controllers/impressoraBuscar.php"; 

    $inativo = 0;
    $ativo = 0;
    //$nomeImpressora = "teste";
    //$numSerie = "0001";
    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    $valor = "teste de variavel";
    $i = 0;

    $html ='<!DOCTYPE html>
            <html lang="PT-BR">
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">   <head>
                    <style type="text/css"> 
                        *{
                            padding: 0;
                            margin: 0;
                        }

                    table{
                        width: 98%;
                        border-collapse: separate;
                        border-spacing: 0;
                        margin-top: 5px;
                        margin-bottom: 5px;
                        margin-right: 10px;
                        margin-left: 10px;

                        border-top: 1px solid;
                        border-bottom: 1px solid;
                        border-right: 1px solid;
                        border-left: 1px solid;
                        text-align: center;
                        padding: 2px;
                        background-color: #efefef;
                    }

                    .tableUfs{
                        /*width: 100%;
                        border-collapse: separate;*/
                        border-spacing: 0;
                        margin-top: 0px;
                        margin-right: 10px;
                        margin-left: 10px;

                        border-top: 0px solid;
                        border-bottom: 0px solid;
                        border-right: 0px solid;
                        border-left: 0px solid;
                        text-align: left;
                        padding: 2px;
                    }

                    thead th{
                        position: sticky;
                        top: 10;
                        background-color: #efefef;
                    }

                    th{
                        border-top: 0px solid;
                        border-bottom: 0px solid;
                        border-right: 0px solid;
                        text-align: center;
                        padding: 2px;
                    }

                    tbody tr:nth-child(even){
                        background: #ffff;
                        overflow: hidden;
                    }

                    td{
                        border-top: 1px solid;
                        border-bottom: 1px solid;
                        border-right: 1px solid;
                        border-left: 1px solid;
                        padding: 2px;
                        text-align: left;
                    }

                    tfoot td{
                        background: blue;  
                        position: sticky;
                        bottom: 0;
                    }
                </style>
            </head>
 <body>
            <nav class="fixed  navbar navbar-dark">
				<div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">	  
                        <table>
                            <thead>
                                <tr>
                                    <th>   
                                        <img id="profile-img" class="profile-img-card" src="../img/cir.jpg" height="5%" width="10%">                   
                                    </th> 
                                <tr>

                                </tr>    
                                    <th>               
                                        <h5><strong>CIR - Coordenção de Informática e Redes</strong></h5>
                                        <h5></h5>
                                    </th>
                                </tr>
                            </thead>            
                        </table>

                        <table>
                            <thead>
                                <tr>
                                    <th>   
                                       <h5>
                                            <h4 class="text-success"><strong> Dados da impressora </strong></h4>
                                        </h5> 
                                    </th>
                                </tr>
                            </thead>            
                        </table>

                        <table class = "tableUfs">
                            <thead>     
                                <tr>
                                    <td style="width:50%">
                                        <h5>
                                            <h5><strong>Nome: ' . $nomeImpressora . '</strong></h5>
                                        </h5> 
                                    </td>
                                    <td style="width:50%">
                                        <h5><strong>Número de Série: ' . $numSerie . '</strong></h5>
                                    </td>                   
                                </tr>
                            </thead>            
                        </table>
                    </div>
                    <div class="panel-content">
                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <table>                          
                                    <thead>
                                        <tr>												
                                            <th style="width:6%"><h6>ITEM</h6></th>	
                                            <th><h6>DESCRIÇÃO DO MATERIAL</h6></th>
                                            <th style="width:10%"><h6>ESTADO</h6></th>
                                            <th style="width:6%"><h6>NOTA FISCAL</h6></th>
                                            <th style="width:10%"><h6>SUBELEMENTO</h6></th>
                                            <th style="width:10%"><h6>CONTA CONTÁBIL</h6></th>
                                            <th style="width:6%"><h6>QUA</h6></th>	
                                            <th style="width:6%"><h6>VALOR UNITÁRIO</h6></th>
                                            <th style="width:6%"><h6>VALOR TOTAL</h6></th>									
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>																																
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                        <td><h6> "TOTAL"' . $i . '</h6></td>
                                                    <tr>               </tbody>                                   
                                </table>
                            </div>
                        </div>

                    
                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <table>
                                    <thead>
                                        </tr>    
                                            <td>               
                                                <h6>Nº do Pocesso: &nbsp;' . $valor . '</h6> 
                                                <h6>Doação: &nbsp;' . $valor . '</h6>
                                                <h6>Localidade: &nbsp;' . $valor . '</h6>
                                            </td>
                                        </tr>
                                    </thead>            
                                </table>
                            </div>
                        </div>

                        <p></p> <br /> <br /> 

                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <table class = "tableUfs">
                                    <thead>
                                        </tr>    
                                            <th>               
                                                <h5>';

                                                    setlocale(LC_ALL, "pt_BR", "pt_BR.utf-8", "pt_BR.utf-8", "portuguese");
                                                    date_default_timezone_set("America/Sao_Paulo");
                                                    $mes1 = date("m");
                                                    $dia = date("d");
                                                    $ano = date("Y");
                                                    //$mesAux[] = ['Janeiro';'Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];
                                                    $mesAux = array("Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro");
                                                    //$today = date("j F  Y"); //$data =  utf8_encode(d de F de Y);
                                                    $mes = $mesAux[1+1];
    $html3 = '                                      Rio de Janeiro &nbsp;' . $dia . '&nbsp; de &nbsp;'. $mes . '&nbsp; de &nbsp;'. $ano .
                                                '</h5> 

                                                <p></p> <br /> <br /> 

                                                <h5>______________________________________________________</h5>
                                                <h5>(Nome do Reponsável direto pelo bem e SIAPE)</h5>
                                            
                                                <p></p> <br /> <br /> 

                                                <h5>________________________________________________________________</h5>
                                                <h5>(Nome do Reponsável pelo setor de patrimônio da Unidade e SIAPE)</h5>
                                            </th>
                                        </tr>
                                    </thead>            
                                </table>
                            </div>
                        </div>
                    </div>
				</div>
			</nav>	  
        </div> 	
	</body>
</html>';

 //$html = $html.$html2;

 //echo $html;

 
   //inclui a biblioteca do dompdf
    //require_once("dompdf/autoload.inc.php");
    require_once("../dompdf/autoload.inc.php");

    use Dompdf\Dompdf;
    use Dompdf\Options;

    //def("DOMPDF_ENABLE_REMOTE", false); 
    $options = new Options();
    $options->set('isRemoteEnabled', true);
    $dompdf = new Dompdf($options);

    //$dompdf->set_base_path("/www/html/marcio/sistemaEscolarUfs2/bootstrap-5.0.2/css");

    //$dompdf = new Dompdf();
    
    //concatenando as variáveis
    $html=$html.$html3;

    //gerando o pdf
    $html = utf8_decode($html);
    
    // configurar papel 
	$dompdf->set_paper("A4", "portrail");
    
    //$html = iconv('UTF-8',$html);
    $dompdf->load_html(utf8_encode($html));
    $dompdf->render();
    $dompdf->stream("matricula.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		));


?>	

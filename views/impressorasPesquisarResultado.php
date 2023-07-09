<?php
	include "../template/menuPrincipal.php";
    //include "../scripts/mascara.php"; 
   include_once "../controllers/impressoraPesquisa.php";  
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

    //echo "<br>valorPesquisa => " . $valorPesquisa;  
    //echo "<br>tipoPesquisa => " . $tipoPesquisa;  
    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	


                <div class="line">
                    <div id="page-content-wrapper">                        						
                        <div class="panel-content">  
                            <div class="col-md-12">	     
						        <h3 class="text-success">Resultado da Pesquisa:</h3>
                                <div class="panel-header">                                    
                                    <table class="table table-borderless">
                                        <thead>
                                            <tr>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
                                                    <div class="btn-group pull-left" >
                                                        <a class="btn btn-small btn-warning table-edit">Alterar<i class="icon-edit"></i></a>
                                                    </div>
                                                    
                                                    <div class="btn-group pull-left">
                                                        <a class="btn btn-primary">Historico<i class="icon-remove"></i></a>
                                                    </div>
                                                        
                                                    <div class="btn-group pull-left">
                                                        <a class="btn btn-info">Detalhes<i class="icon-remove"></i></a>
                                                    </div>
                                                        
                                                    <div class="btn-group pull-left">
                                                        <a class="btn btn-small btn-success">atIvar<i class="icon-remove"></i></a>
                                                        <a class="btn btn-small btn-danger">destIvar<i class="icon-remove"></i></a>
                                                    </div>

                                                    <div class="btn-group pull-left">
                                                        <a class="btn btn-small btn-ufs">imPrimir<i class="icon-remove"></i></a>
                                                    </div>

                                                    <div class="btn-group pull-left">
                                                        <a class='nav-link' href='./pesquisaImpressoras.php'><button type='button' class='btn btn-outline-warning'>voltar</button> </a>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>   
                                    </table>  
                                </div> 
                                <?php
                                   if($tipoPesquisa != "divisao")
                                        {
                                            include "../template/exibirPesquisa1.php";  
                                        }
                                    else
                                        {
                                            include "../template/exibirPesquisa2.php";  
                                        }     
                                ?>       		
                            </div>  
                        </div> 						
					</div>
				</div>
			</div>	
		</div>		
	</body>
</html>

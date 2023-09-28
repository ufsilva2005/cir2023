<?php
    include "../template/menuPrincipal.php";
    include_once "../controllers/impressoraPesquisa.php";

    if ($_SESSION['impressora'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
    if($valorPesquisa == "" && $tipoPesquisa =="")
        {   
            $valorPesquisa = $_SESSION['valorP1'] ;  
   			$tipoPesquisa = $_SESSION['tipoP1'];   
        }

    $_SESSION['numUser'] = "";
    //echo "<br><br>";
    //echo "<br>valorPesquisa => " . $valorPesquisa;  
    //echo "<br>tipoPesquisa => " . $tipoPesquisa;  
    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Resultado da Pesquisa:</h3>
                <div class="panel-header">
                    <table class="table table-borderless">
                        <thead>
                            <tr>
                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
                                <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
                                    <div class="btn-group pull-left">
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
                if ($tipoPesquisa != "divisao") {
                    include "../template/exibirPesquisa1.php";
                } else {
                    include "../template/exibirPesquisa2.php";
                }
                ?>

            </div>
        </nav>
        <div class="fixed-bottom p-3 mb-2 bg-primary text-white">
            <div class="col px-md-1 col-md-2">
                <label for="inputSuccess" class="control-label">Total de Impressoras:</label>
                <input type="text" class="form-control" value="<?php echo $_SESSION['numRows']; ?>">
            </div>
        </div>
    </body>
</html>
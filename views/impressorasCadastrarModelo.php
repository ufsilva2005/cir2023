<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php";

    if ($_SESSION['impressora'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    include "../scripts/validarNumImp.php";
    //include "../scripts/validarNumImp.php";
    include "../scripts/mascara.php";
?>
<script type="text/javascript" src="../javaScripts/typeahead.js"></script>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Impressora</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <form name="cadastro" id="cadastro" class="form-horizontal" method="POST" action="../controllers/modeloImpCadastrar.php">
                            <fieldset>
                                <div class="row">
                                    <label>
                                        <h5 class="text-primary">1-> Informações da Impressora </h5>
                                    </label>
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-6">
                                        <label for="inputSuccess" class="control-label">Modelo da Impressora:</label>
                                        <input type="text" class="form-control" name="modeloImpressora" id="modeloImpressora">
                                    </div>
                                </div>
                                <hr>
                                <div id="actions" class="row">
                                    <div class="col-md-2">
                                        <button type="submit" class="btn btn-success">Salvar</button>
                                    </div>

                                    <div class="col-md-2">
                                        <a href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                    </div>

                                    <div class="col px-md-1 col-md-12" id="MostraPesq"> </div>
                                    <div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE IMPRESSORAS</a></p>
                    </footer>
                </div>
            </div>
        </nav>
    </body>
</html>
<?php
	include "../template/menuPrincipal-0.php";     
?>
        <div class="container">
            <div id="page-content-wrapper">
				<div class="panel-header">
					<i class="icon-tasks icon-blue"></i>
					<h3 class="text-success">Recuperação Senhas</h3>
				</div>
						
				<div class="panel-content">
					<div class="col-md-12">																																
						<form  id="cadastro"  name="cadastro" class="form-horizontal" action="../controllers/esqueceSenha.php?action=1" method="POST">		
                            <div class="row">
                                <div class="col px-md-1 col-md-8">
                                    <label for="inputSuccess" class="control-label">Nome:</label>
                                    <input type="text" class="form-control" name="nomeFuncionario1" required>
                                </div>

                                <div class="col px-md-1 col-md-2">
                                    <label for="inputSuccess" class="control-label">Login:</label>
                                    <input type="text" class="form-control" name="login1" >
                                </div>

								<div class="col px-md-1 col-md-2">
                                    <label for="inputSuccess" class="control-label">Senha:</label>
                                    <input type="password" class="form-control" name="senha1">
                                </div>
                            </div>

							<hr>

                            <div id="actions" class="row">
								<div class="col-md-2">
								    <button type="submit" class="btn btn-success">Salvar</button>
								</div>
								<div class="col-md-2">								
									<a  href="../index.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
								</div>	

                                <div class="col px-md-1 col-md-12" id="MostraPesq">	</div>
								<div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>		
							</div>	
                        </form>
                    </div>	
				</div>	
            </div>	
		</div>	
    </body>
</html>
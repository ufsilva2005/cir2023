<?php
	include "../template/menuPrincipal.php";
?>
<hr> <hr>
<script src="jquery.min.3-1.js"></script>
        <script src="bootstrap3-typeahead.min.js"></script>  
       
            <div class="container">
                <div id="page-content-wrapper">
                    <div class="panel-header">
                        <i class="icon-tasks icon-blue"></i>
                        <h3 class="text-success">Cadastro de Funcionários</h3>
                    </div>
                        <label>Search Members</label>
                        <input type="text" name="member_list" id="member_list"  autocomplete="off" placeholder="Type Members Name" />
                    </div>
                </div>
            </div> 
        </div> 
    </body>
            
            <script>
                $(document).ready(function(){
                $('#member_list').typeahead({
                    source: function(query, result)
                        {
                            $.ajax({
                                url:"../js/get_members_fetch.php",
                                method:"POST",
                                data:{query:query},
                                dataType:"json",
                                success:function(data)
                                {
                                    result($.map(data, function(item){
                                        return item;
                                    }));
                                }
                            })
                        }
                    });
                });
            </script>
</html>

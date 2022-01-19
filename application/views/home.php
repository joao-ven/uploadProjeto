<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view('TEMPLATE/topo');
?>
<?php $this->load->view('TEMPLATE/menu');
?>
<main class="container">
 <?php $this->load->view('TEMPLATE/destaques');
?>   

    <div class="row g-5">
        <div class="col-md-8">
          <?php $this->load->view('TEMPLATE/listagem-posts'); ?>  
        </div>
   
          
<?php $this->load->view('TEMPLATE/coluna-direita'); ?>
    </div>
</main>


<?php $this->load->view('TEMPLATE/rodape'); ?>
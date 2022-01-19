<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view('template/topo');
?>
<?php $this->load->view('template/menu');
?>
<main class="container">


    <div class="row g-5">
        <div class="col-md-8">
            <h3 class="pb-4 mb-4 fst-italic border-bottom">
                Sobre o Site
            </h3>

            <p> Blog desenvolvido por alunos da rede Federal</p>

        </div>


        <?php $this->load->view('template/coluna-direita'); ?>
    </div>
</main>


<?php $this->load->view('template/rodape');
?>


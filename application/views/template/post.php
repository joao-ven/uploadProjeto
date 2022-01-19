<?php $this->load->view('TEMPLATE/topo');
?>
<?php $this->load->view('TEMPLATE/menu');
?>
<main class="container">


    <div class="row g-5">
        <div class="col-md-8">


            <article class="blog-post">
                <h2 class="blog-post-title"><?php echo $postagem->titulo; ?></h2>
                <p class="blog-post-meta">January 1, 2021 by <a href="#"><?php echo $postagem->id_autor; ?></a></p>

                <?php echo $postagem->conteudo;
                ?>
            </article>

        </div>

        <?php $this->load->view('TEMPLATE/coluna-direita'); ?>
    </div>
</main>


<?php $this->load->view('TEMPLATE/rodape'); ?>


















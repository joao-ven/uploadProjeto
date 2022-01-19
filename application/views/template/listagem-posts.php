
<h3 class="pb-4 mb-4 fst-italic border-bottom">
    Postagens
</h3>
<?php
foreach ($postagens as $post) {
    ?>
    <article class="blog-post">
        <h2 class="blog-post-title">
            <a href=" <?php echo base_url() . 'pagina/post/' . $post->id; ?>" >
    <?php echo $post->titulo; ?>
            </a>
        </h2>
        <p class="blog-post-meta">December 23, 2020 by <a href="#"><?php echo $post->id_autor ?></a></p>

    <?php echo $post->previa ?>

    </article>

    <?php
}
?>

<nav class="blog-pagination" aria-label="Pagination">
    <a class="btn btn-outline-primary enabled" href="#">Recentes</a>
    <a class="btn btn-outline-secondary" href="#">Paginas antigas</a>
</nav>

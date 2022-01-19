<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
             <title>Cadastro</title>
    </head>
    <body>

        <div>



            <a href='<?php echo site_url() ?>'>Home</a> |
            <a href='<?php echo site_url() ?>'>Posts</a> |
            <a href='<?php echo site_url() ?>'>Autores</a> |
            <a href='<?php echo site_url() ?>'>Sobre</a>  |
            <a href='<?php echo site_url() ?>'> 

            </a> 	 
            <a href='<?php echo site_url() ?>'>CODIFICANDO PHP!</a> 

            <a href='<?php echo site_url() ?>'></a>

                  
       
            
             <a href='<?php echo site_url('auth/logout') ?>'>Logout</a>

        </div>
        
    
        <div style='height:50px;'></div>  
        <div style="padding: 30px">
            <?php echo $output; ?>
        </div>
        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
    </body>
</html>

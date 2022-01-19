<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.88.1">
        <title><?php echo $titulo ?></title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">

       
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link href="assets/css/header.css" rel="stylesheet">
        
    </head>
    <body>
        <div class="b-example-divider"></div>

        <header class="p-3 bg-dark text-white">
            <div class="container">

                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
                    </a>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="<?php echo base_url(); ?>" class="nav-link px-2 text-secondary">Home</a></li>
                        <li><a href="#" class="nav-link px-2 text-white">Posts</a></li>
                        <li><a href="#" class="nav-link px-2 text-white">Autores</a></li>
                        <li><a href="#" class="nav-link px-2 text-white">Anuncie</a></li>
                        <li><a href="#" class="nav-link px-2 text-white">Sobre</a></li>
                    
                    </ul>
                     
                    <div class="text-end">
                        <a class ="btn btn-outline-light me-2 "href="login">Login</a>
                        
                        <button type="button" class="btn btn-warning">Sign-up</button>
                    </div>
                </div>
            </div>
        </header>
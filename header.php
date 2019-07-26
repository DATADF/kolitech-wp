<!doctype html>
<html <?php language_attributes(); ?>>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>KOLI.TECH</title>
    <?php wp_head(); ?>

  </head>
  <body data-spy='scroll' data-target='#scroll' data-offset="100">

  <?php $template_directory = get_template_directory_uri(); ?>



    <!-- Navgation -->
    <nav class="scroll navbar navbar-expand-lg bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="<?php echo $template_directory;?>/image/logo.svg" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#scroll">
                <span class="navbar-toggler"><i class="fas fa-bars"></i></span>
            </button>
    
            <div class="collapse navbar-collapse" id="scroll">

            
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="#home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#contact" class="nav-link">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a href="blog" class="btn btn-my">Blog</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navgation -->
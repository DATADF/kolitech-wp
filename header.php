<!doctype html>
<html <?php language_attributes(); ?>>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>KOLI.TECH Blog</title>
    <?php wp_head(); ?>

  </head>
  <body data-spy='scroll' data-target='#scroll' data-offset="100">

  <?php $template_directory = get_template_directory_uri(); ?>



    <!-- Navgation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" role="navigation">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="<?php echo $template_directory;?>/image/logo.svg" alt=""></a>
            <!-- Brand and toggle get grouped for better mobile display -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler"><i class="fas fa-bars text-dark"></i></span>
            </button>
        
            <?php
            wp_nav_menu( array(
                'theme_location'    => 'primary',
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'collapse navbar-collapse',
                'container_id'      => 'bs-example-navbar-collapse-1',
                'menu_class'        => 'nav navbar-nav ml-auto',
                'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                'walker'            => new WP_Bootstrap_Navwalker(),
            ) );
            ?>
            
        </div>
    </nav>
    <!-- Navgation -->
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

    <!-- Navgation -->
    <nav class="scroll navbar navbar-expand-lg fixed-top">
        <?php 
          get_template_part('template-parts/content', 'navbar-site');
        ?>
    </nav>
    <!-- Navgation -->
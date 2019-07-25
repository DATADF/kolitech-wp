<?php

// Carrega css e javascript
function kolitech_add_css_scripts() {
    wp_enqueue_style('style', get_stylesheet_uri() );
    wp_enqueue_style( 'main', get_template_directory_uri() . '/css/compressed/main.min.css');
    wp_enqueue_style( 'bootstrapcdn', 'https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css');
    wp_enqueue_style( 'fontawesomecdn', 'https://use.fontawesome.com/releases/v5.6.3/css/all.css');

    wp_enqueue_script( 'popper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js', array ( 'jquery' ), 1.14, true);
    wp_enqueue_script( 'bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array ( 'popper' ), 4.3, true);
    wp_enqueue_script( 'scrollsuave', get_template_directory_uri() . '/js/scroll-suave.js', array ( 'bootstrap' ), 1.0, true);
}

add_action( 'wp_enqueue_scripts', 'kolitech_add_css_scripts');

///////////////////////////////////////////////////////////
/* Add menu */
register_nav_menus( array(
    'primary'   => __( 'Primary Menu', 'kolitech' ),
    'secondary' => __( 'Secondary Menu', 'kolitech' )
) );


////////////////////////////////////////////////////////////
/* Thumbnails */
add_theme_support('post-thumbnails');


////////////////////////////////////////////////////////////
//Carrega os custon posts
$template_diretorio = get_template_directory();

require_once($template_diretorio . '/custom_post_type/about.php');
require_once($template_diretorio . '/custom_post_type/experiences.php');
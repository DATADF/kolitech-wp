<?php

/*
* Creating a Custom Post type for Contact Section
*/

 function kolitech_register_publicity() {

 $args = array (
   'labels' => array (
     'name' => __( 'Publicity', 'publicity' ),
     'singular_name' => __( 'Publicity', 'publicity' ),
     ),
   'description' => 'Add features component',
   'supports' => array( 'title', 'thumbnail'),
   'public' => false,
   'show_ui' => true,
   //'show_in_menu' => 'about-sections',
   'rewrite' => array('slug' => 'publicity', ),
   'taxonomies' 	      => array(),
   'menu_icon'   => 'dashicons-megaphone',
  );

  register_post_type( 'publicity', $args );
 }

 add_action( 'init', 'kolitech_register_publicity' );

?>
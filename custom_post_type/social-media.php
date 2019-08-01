<?php

/*
* Creating a Custom Post type for Contact Section
*/

 function kolitech_register_social_medias_contacts() {

 $args = array (
   'labels' => array (
     'name' => __( 'Social Media', 'social-medias' ),
     'singular_name' => __( 'Social Media', 'social-medias' ),
     ),
   'description' => 'Add features component',
   'supports' => array( 'title'),
   'public' => false,
   'show_ui' => true,
   'show_in_menu' => 'contact-sections',
   'rewrite' => array('slug' => 'social-medias', ),
   'taxonomies' 	      => array(),
  );

  register_post_type( 'social-medias', $args );
 }

 add_action( 'init', 'kolitech_register_social_medias_contacts' );

?>
<?php

/*
* Creating a Custom Post type for Contact Section
*/

 function kolitech_register_emails_contacts() {

 $args = array (
   'labels' => array (
     'name' => __( 'E-mails', 'home-emails' ),
     'singular_name' => __( 'E-mail', 'home-emails' ),
     ),
   'description' => 'Add features component',
   'supports' => array( 'title'),
   'public' => false,
   'show_ui' => true,
   'show_in_menu' => 'contact-sections',
   'rewrite' => array('slug' => 'home-emails', ),
   'taxonomies' 	      => array(),
  );

  register_post_type( 'home-emails', $args );
 }

 add_action( 'init', 'kolitech_register_emails_contacts' );

?>
<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_custom_post_type() {
	$labels = array(
		'name'                => __( 'About' ),
		'singular_name'       => __( 'About'),
		'menu_name'           => __( 'About'),
		'parent_item_colon'   => __( 'Parent About'),
		'all_items'           => __( 'All About'),
		'view_item'           => __( 'View About'),
		//'add_new_item'        => __( 'Add New About'),
		//'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit About'),
		'update_item'         => __( 'Update About'),
		'search_items'        => __( 'Search About'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'about'),
		'description'         => __( 'Best Crunchify About'),
		'labels'              => $labels,
		'supports'            => array( 'title', 'editor', 'thumbnail'),
		'public'              => true,
		'hierarchical'        => false,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'has_archive'         => true,
		'can_export'          => true,
		'exclude_from_search' => false,
	    'yarpp_support'   	  => true,
		'taxonomies' 	      => array('post_tag'),
		'publicly_queryable'  => true,
		'capability_type'     => 'page',
		'menu_icon'   => 'dashicons-id-alt',
);
	register_post_type( 'about', $args );
}
add_action( 'init', 'kolitech_about_custom_post_type', 0 );

/*Custom Post type end*/

// Let us create Taxonomy for Custom Post Type
add_action( 'init', 'kolitech_create_about_custom_custom_taxonomy', 0 );
 
//create a custom taxonomy name it "type" for your posts
function kolitech_create_about_custom_custom_taxonomy() {
 
  $labels = array(
    'name' => _x( 'Types', 'taxonomy general name' ),
    'singular_name' => _x( 'Type', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Types' ),
    'all_items' => __( 'All Types' ),
    'parent_item' => __( 'Parent Type' ),
    'parent_item_colon' => __( 'Parent Type:' ),
    'edit_item' => __( 'Edit Type' ), 
    'update_item' => __( 'Update Type' ),
    'add_new_item' => __( 'Add New Type' ),
    'new_item_name' => __( 'New Type Name' ),
    'menu_name' => __( 'Types' ),
  ); 	
 
  register_taxonomy('types',array('about'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'type' ),
  ));
}
<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_contact_custom_post_type() {
	$labels = array(
		'name'                => __( 'Contact' ),
		'singular_name'       => __( 'Contact'),
		'menu_name'           => __( 'Contact'),
		'parent_item_colon'   => __( 'Parent Contact'),
		'all_items'           => __( 'Contact'),
		'view_item'           => __( 'View Contact'),
		//'add_new_item'        => __( 'Add New About'),
		//'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Contact'),
		'update_item'         => __( 'Update Contact'),
		'search_items'        => __( 'Search Contact'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'contact'),
		'description'         => __( 'Best Crunchify Contact'),
		'labels'              => $labels,
		'supports'            => array( 'title'),
		'public'              => true,
		'hierarchical'        => false,
		'show_ui'             => true,
		'show_in_menu'        => 'contact-sections',
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
	register_post_type( 'contact', $args );
}
add_action( 'init', 'kolitech_contact_custom_post_type', 0 );

/*Custom Post type end*/

// // Let us create Taxonomy for Custom Post Type
// add_action( 'init', 'kolitech_create_about_custom_custom_taxonomy', 0 );
 
// //create a custom taxonomy name it "type" for your posts
// function kolitech_create_about_custom_custom_taxonomy() {
 
//   $labels = array(
//     'name' => _x( 'Types', 'taxonomy general name' ),
//     'singular_name' => _x( 'Type', 'taxonomy singular name' ),
//     'search_items' =>  __( 'Search Types' ),
//     'all_items' => __( 'All Types' ),
//     'parent_item' => __( 'Parent Type' ),
//     'parent_item_colon' => __( 'Parent Type:' ),
//     'edit_item' => __( 'Edit Type' ), 
//     'update_item' => __( 'Update Type' ),
//     'add_new_item' => __( 'Add New Type' ),
//     'new_item_name' => __( 'New Type Name' ),
//     'menu_name' => __( 'Types' ),
//   ); 	
 
//   register_taxonomy('types',array('about'), array(
//     'hierarchical' => true,
//     'labels' => $labels,
//     'show_ui' => true,
//     'show_admin_column' => true,
//     'query_var' => true,
//     'rewrite' => array( 'slug' => 'type' ),
//   ));
// }
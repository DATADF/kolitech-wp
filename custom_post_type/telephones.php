<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_telephone_custom_post_type() {
	$labels = array(
		'name'                => __( 'Telephones' ),
		'singular_name'       => __( 'Telephone'),
		'menu_name'           => __( 'Telephones'),
		'parent_item_colon'   => __( 'Parent Telephones'),
		'all_items'           => __( 'Telephones'),
		'view_item'           => __( 'View Telephone'),
		'add_new_item'        => __( 'Add New Telephone'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Telephone'),
		'update_item'         => __( 'Update Telephones'),
		'search_items'        => __( 'Search Telephones'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'telephone'),
		'description'         => __( 'Best Crunchify telephone'),
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
		'taxonomies' 	      => array(),
		'publicly_queryable'  => true,
		'capability_type'     => 'page',
		'menu_icon'   => 'dashicons-id-alt',
);
	register_post_type( 'telephone', $args );
}
add_action( 'init', 'kolitech_telephone_custom_post_type', 0 );

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
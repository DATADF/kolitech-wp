<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_service_custom_post_type() {
	$labels = array(
		'name'                => __( 'Services' ),
		'singular_name'       => __( 'Service'),
		'menu_name'           => __( 'Services'),
		'parent_item_colon'   => __( 'Parent Service'),
		'all_items'           => __( 'Services'),
		'view_item'           => __( 'View Service'),
		'add_new_item'        => __( 'Add New Service'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Service'),
		'update_item'         => __( 'Update Service'),
		'search_items'        => __( 'Search Service'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'Service'),
		'description'         => __( 'Best Crunchify Services'),
		'labels'              => $labels,
		'supports'            => array('title', 'thumbnail', 'editor'),
		'public'              => true,
		'hierarchical'        => false,
		'show_ui'             => true,
		'show_in_menu'        => 'about-sections',
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'has_archive'         => true,
		'can_export'          => true,
		'exclude_from_search' => false,
	    'yarpp_support'       => true,
		'taxonomies' 	      => array(),
		'publicly_queryable'  => true,
        'capability_type'     => 'page',
		'menu_icon'   => 'dashicons-hammer',
);
	register_post_type( 'service', $args );
}
add_action( 'init', 'kolitech_about_service_custom_post_type', 0 );

/*Custom Post type end*/
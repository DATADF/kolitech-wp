<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_experience_custom_post_type() {
	$labels = array(
		'name'                => __( 'Experiences' ),
		'singular_name'       => __( 'About'),
		'menu_name'           => __( 'Experiences'),
		'parent_item_colon'   => __( 'Parent Experience'),
		'all_items'           => __( 'All Experiences'),
		'view_item'           => __( 'View Experience'),
		'add_new_item'        => __( 'Add New Experience'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Experience'),
		'update_item'         => __( 'Update Experience'),
		'search_items'        => __( 'Search Experience'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'Experience'),
		'description'         => __( 'Best Crunchify Experience'),
		'labels'              => $labels,
		'supports'            => array('title'),
		'public'              => true,
		'hierarchical'        => false,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'has_archive'         => true,
		'can_export'          => true,
		'exclude_from_search' => false,
	        'yarpp_support'       => true,
		'taxonomies' 	      => array('post_tag'),
		'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'menu_icon'   => 'dashicons-awards',
);
	register_post_type( 'experience', $args );
}
add_action( 'init', 'kolitech_about_experience_custom_post_type', 0 );

/*Custom Post type end*/
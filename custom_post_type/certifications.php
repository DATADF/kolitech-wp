<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_certification_custom_post_type() {
	$labels = array(
		'name'                => __( 'Certifications' ),
		'singular_name'       => __( 'Certification'),
		'menu_name'           => __( 'Certifications'),
		'parent_item_colon'   => __( 'Parent Certification'),
		'all_items'           => __( 'Certifications'),
		'view_item'           => __( 'View Certification'),
		'add_new_item'        => __( 'Add New Certification'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Certification'),
		'update_item'         => __( 'Update Certification'),
		'search_items'        => __( 'Search Certification'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'Certification'),
		'description'         => __( 'Best Crunchify Certifications'),
		'labels'              => $labels,
		'supports'            => array('title', 'thumbnail', 'excerpt', 'editor'),
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
		'menu_icon'   => 'dashicons-awards',
);
	register_post_type( 'certification', $args );
}
add_action( 'init', 'kolitech_about_certification_custom_post_type', 0 );

/*Custom Post type end*/
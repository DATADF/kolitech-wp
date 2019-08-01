<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_courses_custom_post_type() {
	$labels = array(
		'name'                => __( 'Courses' ),
		'singular_name'       => __( 'Course'),
		'menu_name'           => __( 'Courses'),
		'parent_item_colon'   => __( 'Parent Course'),
		'all_items'           => __( 'Courses'),
		'view_item'           => __( 'View Course'),
		'add_new_item'        => __( 'Add New Course'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Course'),
		'update_item'         => __( 'Update Course'),
		'search_items'        => __( 'Search Course'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'Certification'),
		'description'         => __( 'Best Crunchify Courses'),
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
        'menu_icon'   => 'dashicons-welcome-learn-more',
);
	register_post_type( 'courses', $args );
}
add_action( 'init', 'kolitech_about_courses_custom_post_type', 0 );

/*Custom Post type end*/
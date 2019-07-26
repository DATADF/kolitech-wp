<?php

////////////////////////////////////////////////////////////
/* Custom Post Type Start */
// Creating a About Custom Post Type
function kolitech_about_skills_custom_post_type() {
	$labels = array(
		'name'                => __( 'Skills' ),
		'singular_name'       => __( 'Skill'),
		'menu_name'           => __( 'Skills'),
		'parent_item_colon'   => __( 'Parent Skill'),
		'all_items'           => __( 'All Skills'),
		'view_item'           => __( 'View Skill'),
		'add_new_item'        => __( 'Add New Skill'),
		'add_new'             => __( 'Add New'),
		'edit_item'           => __( 'Edit Skill'),
		'update_item'         => __( 'Update Skill'),
		'search_items'        => __( 'Search Skills'),
		'not_found'           => __( 'Not Found'),
		'not_found_in_trash'  => __( 'Not found in Trash')
	);
	$args = array(
		'label'               => __( 'Skill'),
		'description'         => __( 'Best Crunchify Skills'),
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
        'menu_icon'   => 'dashicons-clipboard',
);
	register_post_type( 'skill', $args );
}
add_action( 'init', 'kolitech_about_skills_custom_post_type', 0 );

/*Custom Post type end*/
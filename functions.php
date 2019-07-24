<?php

// Carrega css e javascript
function kolitech_add_css_scripts() {
    wp_enqueue_style('style', get_stylesheet_uri() );
    wp_enqueue_style( 'main', get_template_directory_uri() . '/css/compressed/main.min.css');
    wp_enqueue_style( 'bootstrapcdn', 'https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css');
    wp_enqueue_style( 'fontawesomecdn', 'https://use.fontawesome.com/releases/v5.6.3/css/all.css');

    wp_enqueue_script( 'popper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js', array ( 'jquery' ), 1.14, true);
    wp_enqueue_script( 'bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array ( 'popper' ), 4.3, true);
    wp_enqueue_script( 'scrollsuave', get_template_directory_uri() . '/js/scroll-suave.js', array ( 'bootstrap' ), 1.0, true);
}

add_action( 'wp_enqueue_scripts', 'kolitech_add_css_scripts');



////////////////////////////////////////////////////////////
/* Custom Post Type Start */

function create_posttype() {
register_post_type( 'news',
// CPT Options

array(
  'labels' => array(
   'name' => __( 'news' ),
   'singular_name' => __( 'News' )
  ),
  'public' => true,
  'has_archive' => false,
  'rewrite' => array('slug' => 'news'),
 )
);
}
// Hooking up our function to theme setup
add_action( 'init', 'create_posttype' );


function cw_post_type_news() {

$supports = array(
'title', // post title
'editor', // post content
'author', // post author
'thumbnail', // featured images
'excerpt', // post excerpt
'custom-fields', // custom fields
'comments', // post comments
'revisions', // post revisions
'post-formats', // post formats
);

$labels = array(
'name' => _x('news', 'plural'),
'singular_name' => _x('news', 'singular'),
'menu_name' => _x('news', 'admin menu'),
'name_admin_bar' => _x('news', 'admin bar'),
'add_new' => _x('Add New', 'add new'),
'add_new_item' => __('Add New news'),
'new_item' => __('New news'),
'edit_item' => __('Edit news'),
'view_item' => __('View news'),
'all_items' => __('All news'),
'search_items' => __('Search news'),
'not_found' => __('No news found.'),
);

$args = array(
'supports' => $supports,
'labels' => $labels,
'public' => true,
'query_var' => true,
'rewrite' => array('slug' => 'news'),
'has_archive' => true,
'hierarchical' => false,
'menu_icon' => 'dashicons-text-page',
);
register_post_type('news', $args);
}
add_action('init', 'cw_post_type_news');

/*Custom Post type end*/
<?php

/*
* Adding a menu to contain the custom post types for frontpage
*/

 function kolitech_about_admin_menu() {

    add_menu_page(
        'About Sections',
        'About Sections',
        'read',
        'about-sections',
        '',
        'dashicons-id-alt',
        40
    );

 }

 add_action( 'admin_menu', 'kolitech_about_admin_menu' );

?>
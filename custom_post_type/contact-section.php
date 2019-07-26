<?php

/*
* Adding a menu to contain the custom post types for frontpage
*/

 function kolitech_contact_admin_menu() {

    add_menu_page(
        'Contact Sections',
        'Contact Sections',
        'read',
        'contact-sections',
        '',
        'dashicons-email-alt',
        40
    );

 }

 add_action( 'admin_menu', 'kolitech_contact_admin_menu' );

?>
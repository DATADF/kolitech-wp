<div class="pagination-posts">
    <?php
                            
        $pages = 999999999; // need an unlikely integer

        echo paginate_links( array(
            'base'         => str_replace( $pages, '%#%', esc_url( get_pagenum_link( $pages ) ) ),
            'format' => '?paged=%#%',
            'current' => max( 1, get_query_var('paged') ),
            'total' => $the_query->max_num_pages,
            'show_all'     => false,
            'end_size'     => 3,
            'mid_size'     => 1,
            'prev_next'    => true,
            'prev_text'    => __( '<i class="fas fa-arrow-alt-circle-left"></i>' ),
            'next_text'    => __( '<i class="fas fa-arrow-alt-circle-right"></i>' ),
            'add_args'     => false,
            'add_fragment' => ''
        ) );
    ?>
</div>
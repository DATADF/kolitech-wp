<aside class="sidebar">
    <?php if ( dynamic_sidebar('sidebar-site') ) : else : endif; ?>
    <!-- <h2>Publicity</h2> -->
    <?php
    $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
    $args = array(
        'post_type' => 'publicity',
        'paged' => $paged,
    );

    // the query
    $wp_query = new WP_Query( $args ); ?>

    <!-- the loop -->
    <?php if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>

    <figure>
        <?php if ( has_post_thumbnail() ) : ?>
            <a href="<?php the_field('link'); ?>" target="blank"><?php the_post_thumbnail(); ?></a>
        <?php endif; ?>
    </figure>

    <?php endwhile; ?>
    <!-- end of the loop -->

    <?php wp_reset_postdata(); ?>
    
    <?php else : ?>
        <!-- <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p> -->
    <?php endif; ?> 
</aside>
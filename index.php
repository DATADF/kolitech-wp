<?php /* template name: Page Blog */ ?>
<?php 
    if(is_front_page())
    {
        get_header('home');
    }
    else
    {
        get_header();
    }
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-5"><strong>My</strong> Personal <strong>Blog</strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                    <!-- Start Articles -->
                    <div class="articles">

                    <?php
                    $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
                    $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => 3,
                        'paged' => $paged,
                    );

                    // the query
                    $the_query = new WP_Query( $args ); ?>
                    
                    <?php if ( $the_query->have_posts() ) : ?>
                    

                    
                    <!-- the loop -->
                    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                        
                        <article class="article">
                        
                        <a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
                        <small><p>Date: <?php the_time('d/m/Y'); ?></p></small>
                        <small>
                            <p>Categories: <?php the_category(' / '); ?></p>
                        </small>
                        <small>
                            <p>Tags: <?php the_tags('', ' / ', ''); ?></p>
                        </small>
                        <figure>
                            <?php if ( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail( 'thumbs' ); ?>
                            <?php endif; ?>
                        </figure>
                        <?php the_excerpt(); ?>
                        <a class="btn my-btn-primary" href="<?php the_permalink(); ?>">read more</a>
                    </article>
                        
                    <?php endwhile; ?>
                    <!-- end of the loop -->
                
                    <?php wp_reset_postdata(); ?>
                    
                    <?php else : ?>
                        <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                    <?php endif; ?>
                    
                        
                        


                    <!-- Pagination -->
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
                    <!-- Pagination -->


                </div>
                <!-- End Articles -->

                    
                    <!-- Start Aside -->
                        <?php get_template_part('template-parts/sidebar'); ?>
                    <!-- End Aside -->
            </div>
        </div>
    </div>
</section>

    <?php get_footer(); ?>
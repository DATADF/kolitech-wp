<?php /* template name: Page Certification */ ?>
<?php 
    get_header('pages');
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-2"><strong><?php the_title(); ?></strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                    <!-- Start Articles -->
                    <div class="articles" id="certifications">

                        <?php
                        $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
                        $args = array(
                            'post_type' => 'certification',
                            'showposts' => 5,
                            'post_status' => 'publish',
                            'order' => 'ASC',
                            'paged' => $paged,
                        ); 
                            $wp_query = new WP_Query ( $args ); 
                        ?>
                        <?php if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>
                        <article class="article">
                    
                            <a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
                            <figure>
                                <?php if ( has_post_thumbnail() ) : ?>
                                    <?php the_post_thumbnail( 'thumbs' ); ?>
                                <?php endif; ?>
                            </figure>
                            <p class="mb-2"><strong>Theme:</strong> <?php the_field('theme'); ?></p>
                            <p><?php the_excerpt(); ?></p>
                            <a class="btn my-btn-primary" href="<?php the_permalink(); ?>">read more</a>
                        </article>
                    <?php endwhile;	endif; ?>

                        <!-- Pagination -->
                        <div class="pagination-posts">
                            <div class="pagination">
                                <?php wordpress_pagination(); ?>
                            </div>
                        </div>
                        <!-- Pagination -->
                    </div>
                    <!-- End Articles -->

                    
                    <!-- Start Aside -->

                        <?php 

                            if(is_front_page())
                            {
                                get_template_part('template-parts/content', 'sidebar');
                            }
                            else
                            {
                                get_template_part('template-parts/content', 'sidebar-site');
                            }
                        ?>
                        <!-- End Aside -->
            </div>
        </div>
    </div>
</section>

    <?php get_footer(); ?>
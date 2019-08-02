<?php /* template name: Page Courses */ ?>
<?php 
    get_header('pages');
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-2"><strong>EDUCATION PROFILE</strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                    <!-- Start Articles -->
                    <div class="articles">

                        <?php
                        $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;
                        $args = array(
                            'post_type' => 'courses',
                            'paged' => $paged,
                        ); 
                            $wp_query = new WP_Query ( $args ); 
                        ?>
                        <?php if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>
                        <!-- Start Article -->
                        <article class="article">
                    
                            <a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
                            <figure>
                                <?php if ( has_post_thumbnail() ) : ?>
                                    <?php the_post_thumbnail( 'thumbs' ); ?>
                                <?php endif; ?>
                            </figure>
                            <p>Year: <strong><?php the_field('year'); ?></strong></strong></p>
                            <p><?php the_excerpt(); ?></p>
                            <a class="btn my-btn-primary" href="<?php the_permalink(); ?>">read more</a>
                        </article>
                        <!-- End Article -->
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
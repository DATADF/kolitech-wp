<?php 
    get_header();
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-2"><strong><?php single_tag_title(); ?></strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                <!-- Start Articles -->
                <div class="articles">

                    <!-- the loop -->
                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <article class="article">
                        
                        <a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
                        
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
                                get_template_part('template-parts/content', 'sidebar-site');
                            }
                            else
                            {
                                get_template_part('template-parts/content', 'sidebar');
                            }
                        ?>
                        <!-- End Aside -->
                
            </div>
        </div>
    </div>
</section>

    <?php get_footer(); ?>
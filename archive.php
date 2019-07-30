<?php 
    get_header();
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-5"><p>Categories: <?php the_category(' / '); ?></p></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                <!-- Start Articles -->
                <div class="articles">

                <?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
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
                <?php endwhile;	endif; ?>
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
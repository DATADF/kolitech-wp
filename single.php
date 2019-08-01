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
            <h2 class="py-2"><strong><?php the_title(); ?></strong></h2>
            <hr>

            <div class="row">
                <div class="container">
                    <div class="flex-container">

                        <!-- Start Articles -->
                        <div class="articles">

                    
                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <article class="article">
                            
                            <small><p>Date: <?php the_time('d/m/Y'); ?></p></small>
                            <small>
                                <p>Categories: <?php the_category(' / '); ?></p>
                            </small>
                            <small>
                                <p>Tags: <?php the_tags('', ' / ', ''); ?></p>
                            </small>
                            <figure>
                                <?php if ( has_post_thumbnail() ) : ?>
                                    <?php the_post_thumbnail( 'single' ); ?>
                                <?php endif; ?>
                            </figure>
                            <?php the_content(); ?>
                        </article>
                    <?php endwhile;	endif; ?>
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
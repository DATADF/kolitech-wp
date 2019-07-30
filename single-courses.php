<?php 

    if(is_front_page())
    {
        get_header();
    }
    else
    {
        get_header('pages');
    }
?>

<section class="py-5">
        <div class="container">
            <hr>
            <h2 class="py-5"><strong><?php the_title(); ?></strong></h2>
            <hr>

            <div class="row">
                <div class="container">
                    <div class="flex-container">

                        <!-- Start Articles -->
                        <div class="articles">

                    
                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <article class="article">
                            
                            <small><h3 class="mb-2">Period: <?php the_field('start'); ?> to <?php the_field('end'); ?></h3></small>

                            <figure>
                                <img src="<?php the_field('logo_courses'); ?>" alt="">
                            </figure>

                            <?php the_field('details'); ?>
                        </article>
                    <?php endwhile;	endif; ?>
                    </div>
                        <!-- End Articles -->

                        
                        <!-- Start Aside -->

                        <?php 

                            if(is_front_page())
                            {
                                get_template_part('template-parts/sidebar');
                            }
                            else
                            {
                                get_template_part('template-parts/sidebar-site');
                            }
                        ?>
                            
                        <!-- End Aside -->
                </div>
            </div>
        </div>
    </section>

    <?php get_footer(); ?>
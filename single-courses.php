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
            <h2 class="py-2"><strong>EDUCATION PROFILE</strong></h2>
            <hr>

            <div class="row">
                <div class="container">
                    <div class="flex-container">

                        <!-- Start Articles -->
                        <div class="articles">

                    
                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <article class="article">
                            <strong><h3 class="mb-2"><?php the_title(); ?></h3></strong>
                            <figure>
                                <?php if ( has_post_thumbnail() ) : ?>
                                    <?php the_post_thumbnail( 'thumbs' ); ?>
                                <?php endif; ?>
                            </figure>
                            <p class="mb-2"><strong>Year:</strong> <?php the_field('year'); ?></p>
                            <p class="mb-2"><strong>Instituition:</strong> <?php the_field('instituition'); ?></p>
                            <p class="mb-2"><strong>Local:</strong> <?php the_field('local'); ?></p>
                            <p class="mb-2"><strong>Parents:</strong> <?php the_field('parents'); ?></p>
                            <?php the_content(); ?>
                        </article>
                    <?php endwhile;	endif; ?>
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
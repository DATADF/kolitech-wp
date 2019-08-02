<?php /* template name: Page About */ ?>
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
        <h2 class="py-2"><strong><?php the_title(); ?></strong></h2>
        <hr>

        <div class="row">
            <div class="container">

                
                    <!-- Start about -->
                    <div class="about">
                        <!-- Início loop About -->
                        <?php
                            $argsAbout = array(
                                'post_type' => 'about',
                                'showposts' => 1,
                                'post_status' => 'publish',
                                'order' => 'DESC'
                            ); 
                            $the_query = new WP_Query ( $argsAbout ); 
                        ?>
                        <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                        <figure>
                            <?php
                                if ( has_post_thumbnail() ) {
                                    the_post_thumbnail();
                                }
                            ?>
                        </figure>
                        <?php the_content(); ?>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        <!-- Fim loop About -->
                        
                    </div>
                    <!-- End about -->

                
            </div>
        </div>
    </div>
</section>

    <?php get_footer(); ?>
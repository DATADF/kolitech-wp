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
                        $args = array(
                            'post_type' => 'post',
                            'category_name' => '',
                            //'showposts' => 3,
                            'post_status' => 'publish',
                            //'orderby' => 'rand',
                            'order' => 'DESC'
                        ); 
                        $the_query = new WP_Query ( $args ); 
                    ?>
                    <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
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

                        <!-- Pagination -->
                            <div class="card-body">
                                <?php get_template_part('template-parts/content', 'pagination'); ?>
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
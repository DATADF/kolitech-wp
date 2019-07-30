<?php /* template name: Page Certification */ ?>
<?php 
    get_header('pages');
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-5"><strong><?php the_title(); ?> teste</strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                    <!-- Start Articles -->
                    <div class="articles">

                        <?php
                            $args = array(
                                'post_type' => 'certifications',
                                'showposts' => 3,
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
                            
                            <?php the_field('details'); ?>
                            <a class="btn my-btn-primary" href="<?php the_permalink(); ?>">read more</a>
                        </article>
                    <?php endwhile;	endif; ?>

                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
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
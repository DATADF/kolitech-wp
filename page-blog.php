<?php /* template name: Page Blog */ ?>
<?php get_header(); ?>

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
                                <p>Categories: <a href="#">tecnology</a> / <a href="#">server</a></p>
                            </small>
                            <small>
                                <p>Tags: <a href="#">hd</a> / <a href="#">cloud</a></p>
                            </small>
                            <figure>
                                <img src="http://lorempixel.com/1200/400/technics/" alt="<?php the_title(); ?>">
                            </figure>
                            <?php the_excerpt(); ?>
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
                    <aside class="sidebar">
                        <div class="marketing">
                            <h2>Publicidade</h2>
                            <figure>
                                <img src="http://lorempixel.com/300/450/sports/" alt="">
                            </figure>
                        </div>
                        <div class="last-posts">
                            <h2>latest articles</h2>

                            <div>
                                <a href="single.html"><small>01. </small>Consectetur adipisicing elit. Alias, non.</a>
                                <a href="single.html"><small>02. </small>Totam corporis veritatis magnam.</a>
                                <a href="single.html"><small>03. </small>Excepturi neque libero aliquam deleniti amet animi distinctio reiciendis.</a>
                                <a href="single.html"><small>04. </small>Lorem, ipsum dolor.</a>
                                <a href="single.html"><small>05. </small>Amet consectetur adipisicing elit.</a>
                            </div>
                        </div>
                    </aside>
                    <!-- End Aside -->
                </div>
            </div>
        </div>
    </div>
</section>

    <?php get_footer(); ?>
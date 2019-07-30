<?php 
    get_header('pages');
?>

    <!-- Contact -->
    <section id="contact" class="contact py-5">
        <div class="container">
            <!-- Início loop Contact -->
           
            <?php if (have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <h2 class="pt-5"><?php the_title(); ?> <strong>US</strong></h2>
    
            <p><?php the_field('text'); ?></p>
            <?php endwhile; wp_reset_postdata(); endif; ?>
            <!-- Fim loop Contact -->

            <div class="flex-container">
                <div class="means-contact">
                    <h2>means of contact</h2>
                    <h3>telephones</h3>
                    <div class="form-group">
                        <ul>
                            <!-- Início loop Telephone -->
                            <?php
                                $argsTelephone = array(
                                    'post_type' => 'telephone',
                                    'showposts' => -1,
                                    'post_status' => 'publish',
                                    'order' => 'ASC'
                                ); 
                                $the_query = new WP_Query ( $argsTelephone ); 
                            ?>
                            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                                <li><strong><?php the_field('type'); ?>: </strong>
                                    <p><?php the_field('cod_pais'); ?> <?php the_field('ddd'); ?> <?php the_field('number'); ?></p>
                                </li>
                            <?php endwhile; wp_reset_postdata(); endif; ?>
                            <!-- Fim loop Telephone -->
                        </ul>
                    </div>
                    <h3>E-mails</h3>
                    <div class="form-group">
                        <ul>
                            <!-- Início loop E-mails -->
                            <?php
                                $argsEmails = array(
                                    'post_type' => 'home-emails',
                                    'showposts' => -1,
                                    'post_status' => 'publish',
                                    'order' => 'DESC'
                                ); 
                                $the_query = new WP_Query ( $argsEmails ); 
                            ?>
                            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <li><strong><?php the_field('type'); ?>: </strong>
                                <p><a href="mailto:<?php the_field('e-mail'); ?>"><?php the_field('e-mail'); ?></a></p>
                            </li>
                            <?php endwhile; wp_reset_postdata(); endif; ?>
                            <!-- Fim loop E-mails -->
                        </ul>
                    </div>
                    <h3>social media</h3>
                    <ul class="mb-5">
                        <!-- Início loop Social Media -->
                            <?php
                                $argsSocialMedia = array(
                                    'post_type' => 'social-medias',
                                    'showposts' => -1,
                                    'post_status' => 'publish',
                                    'order' => 'ASC'
                                ); 
                                $the_query = new WP_Query ( $argsSocialMedia ); 
                            ?>
                            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                        <li><a href="<?php the_field('link_social_media'); ?>"><i class="<?php the_field('icon_social_media'); ?>"></i></a></li>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        <!-- Fim loop Social Media -->
                    </ul>
                </div>
                
                <div class="form-contact">
                    <h2>send your message</h2>
                    <?php echo do_shortcode('[contact-form-7 id="182" title="Contact Index"]'); ?>
                </div>
                
            </div>
        </div>

        
    </section>
    <!-- Contact -->

<?php get_footer(); ?> 
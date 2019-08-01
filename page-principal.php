<?php /* template name: Page site */ ?>

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

    <!-- Hero -->
    <section id="home" class="hero">
        
        <div id="ExampleCarouselID" class="carousel slide" data-ride="carousel" data-interval="7000">
            <div class="container">
                <!-- Bootstrap 4 Carousel with WordPress Loop -->
                <?php
                    $args = array(
                        'post_type' => 'post',
                        'category_name' => 'destaque',
                        'showposts' => -1,
                        'post_status' => 'publish',
                        'orderby' => 'rand',
                        'order' => 'DESC'
                    ); 
                    $the_query = new WP_Query ( $args ); 
                ?>
                <ol class="carousel-indicators">
                    <!-- Start Carousel Indicator Loop -->
		            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    <li 
                        data-target="#ExampleCarouselID" 
                        data-slide-to="<?php echo $the_query->current_post; ?>" 
                        class="<?php if ( $the_query->current_post == 0 ) : ?>active<?php endif; ?>">
                    </li>
                    <?php endwhile; endif; ?>
                </ol>
                
                <div class="scroll carousel-inner">
                    <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    <div class="carousel-item <?php if ( $the_query->current_post == 0 ) : ?>active<?php endif; ?>">
                        <h1><?php the_title(); ?></h1>
                        <h2><?php the_excerpt(); ?></h2>
                        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="btn my-btn-outline">Read More</a>
                    </div>
                    <?php endwhile;	endif; ?>
                </div> 
            </div>
        </div>
        
    </section>
    <!-- Hero -->

    <!-- Start about -->
    <section id="about" class="about py-3">
        <div  class="container">
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
            <h2><?php the_title();?> <strong class="text-primary">US</strong></h2>
            <figure>
                <?php
                    if ( has_post_thumbnail() ) {
                        the_post_thumbnail();
                    }
                ?>
            </figure>
            <div class="text-center"><?php the_content(); ?></div>
            <?php endwhile; wp_reset_postdata(); endif; ?>
            <!-- Fim loop About -->
            

            <div class="flex-container">
                <div class="skills">
                    <h3>skills</h3>
                    <?php $the_query = new WP_Query ( $argsAbout ); ?>
                    <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                        <p><?php the_field('short_text_skills'); ?></p>
                    <?php endwhile; wp_reset_postdata(); endif; ?>
                    


                    <!-- Início loop Skills -->
                    <?php
                        $argsSkills = array(
                            'post_type' => 'skill',
                            'showposts' => -1,
                            'post_status' => 'publish',
                            'order' => 'ASC'
                        ); 
                        $the_query = new WP_Query ( $argsSkills ); 
                    ?>
                    <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                    <div class="block-skill-progress">
                        <h2>
                            <i class="<?php the_field('icon'); ?>" style="color: <?php the_field('icon_color'); ?>;"></i> 
                            <?php the_field('skill'); ?> // <?php the_field('skill_percentage'); ?>%
                        </h2>
                        <div class="progress">
                            <div class="progress-bar" style="width: <?php the_field('skill_percentage'); ?>%;" role="progressbar" aria-valuenow="<?php the_field('skill_percentage'); ?>" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <?php endwhile; wp_reset_postdata(); endif; ?>
                    <!-- Fim loop Skills -->
                </div>
                
                
                
                <div class="certification-courses">
                    <div class="certification">
                        <h3>Certifications</h3>
                        
                        <?php $the_query = new WP_Query ( $argsAbout ); ?>
                        <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <p><?php the_field('short_text_certifications'); ?></p>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        

                        <ul>
                            <!-- Início loop certification -->
                            <?php
                                $argsCertifications = array(
                                    'post_type' => 'certification',
                                    'showposts' => -1,
                                    'post_status' => 'publish',
                                    'order' => 'DESC'
                                ); 
                                $the_query = new WP_Query ( $argsCertifications ); 
                            ?>
                            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                                <li><a href="<?php the_permalink(); ?>"><?php the_field('certification'); ?></a> - <small><?php the_field('date'); ?></small></li>

                            <?php endwhile; wp_reset_postdata(); endif; ?>
                            <!-- Fim loop certification -->
                        </ul>
                        <a href="https://kolitech-wp.dev/blog/certification/" class="btn btn-primary mb-4">All Certifications</a>
                    </div>

                    <div class="courses">
                        <h3>courses</h3>
                        
                        <?php $the_query = new WP_Query ( $argsAbout ); ?>
                        <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <p><?php the_field('short_text_courses'); ?></p>
                        <?php endwhile; wp_reset_postdata(); endif; ?>

                        <ul>
                            <!-- Início loop courses -->
                            <?php
                                $argsCourses = array(
                                    'post_type' => 'courses',
                                    'showposts' => -1,
                                    'post_status' => 'publish',
                                    'order' => 'DESC'
                                ); 
                                $the_query = new WP_Query ( $argsCourses ); 
                            ?>
                            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                                <li><a href="<?php the_permalink(); ?>"><?php the_field('course'); ?></a> - <small><?php the_field('start'); ?> to <?php the_field('end'); ?></small></li>

                            <?php endwhile; wp_reset_postdata(); endif; ?>
                            <!-- Fim loop courses -->
                        </ul>
                        <a href="https://kolitech-wp.dev/blog/courses/" class="btn btn-primary mb-4">All Courses</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End about -->

    <!-- Contact -->
    <section id="contact" class="contact py-3">
        <div class="container">
            <!-- Início loop Contact -->
            <?php
                $argsContact = array(
                    'post_type' => 'contact',
                    'showposts' => 1,
                    'post_status' => 'publish',
                    'order' => 'DESC'
                ); 
                $the_query = new WP_Query ( $argsContact ); 
            ?>
            <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
            <h2><?php the_title(); ?> <strong>US</strong></h2>
    
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
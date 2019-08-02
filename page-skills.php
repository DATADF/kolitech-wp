<?php /* template name: Page skills */ ?>
<?php 
    get_header('pages');
?>

<section class="py-5">
    <div class="container">
        <hr>
        <h2 class="py-2"><strong>SKILLS & ENDORSEMENTS</strong></h2>
        <hr>

        <div class="row">
            <div class="container">
                <div class="flex-container">

                    <!-- Start Skills -->
                    <div class="skills-page">
                        
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
                            <p><?php the_field('short_text_skills'); ?></p>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        


                        <!-- Início loop Skills -->
                        <?php
                            $argsSkills = array(
                                'post_type' => 'skill',
                                'showposts' => 10,
                                'post_status' => 'publish',
                                'order' => 'ASC'
                            ); 
                            $the_query = new WP_Query ( $argsSkills ); 
                        ?>
                        <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                        <div class="block-skill-progress">
                            <h2>
                                <i class="<?php the_field('icon'); ?>" style="color: <?php the_field('icon_color'); ?>;"></i> 
                                <?php the_field('skill'); ?><i class="fas fa-arrow-right"></i> <strong><?php the_field('skill_percentage'); ?>%</strong>
                            </h2>
                            <div class="progress">
                                <div class="progress-bar" style="width: <?php the_field('skill_percentage'); ?>%;" role="progressbar" aria-valuenow="<?php the_field('skill_percentage'); ?>" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        <!-- Fim loop Skills -->
                    </div>
                    <!-- End skills -->

                    
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
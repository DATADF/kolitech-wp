<?php /* template name: home */ ?>

<?php get_header(); ?>

    <!-- Hero -->
    <section id="home" class="hero">
        
        <div id="ExampleCarouselID" class="carousel slide" data-ride="carousel" data-interval="7000">
            <div class="container">
                <!-- Bootstrap 4 Carousel with WordPress Loop -->
                <?php
                    $args = array(
                        'post_type' => 'post',
                        'category_name' => 'destaque-slide',
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
    <section id="about" class="about py-5">
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
            <h2 class="pt-5"><?php the_title();?> <strong class="text-primary">US</strong></h2>
            <figure>
                <?php
                    if ( has_post_thumbnail() ) {
                        the_post_thumbnail();
                    }
                ?>
            </figure>
            <div class="text-center"><?php the_content(); ?></div>
            


            <div class="flex-container">
                <div class="skills">
                    <h3>skills</h3>
                    <p><?php the_field('skill'); ?></p>
                </div>
                <?php endwhile; wp_reset_postdata(); endif; ?>
                <!-- Fim loop About -->
                
                
                <div class="experience">
                    <h3>experiences</h3>
                    <p>Confira abaixo algumas das empresas onde trabalhei.</p>
                    <ul>
                        <!-- Início loop Experience -->
                        <?php
                            $argsExperience = array(
                                'post_type' => 'experience',
                                'showposts' => -1,
                                'post_status' => 'publish',
                                'order' => 'DESC'
                            ); 
                            $the_query = new WP_Query ( $argsExperience ); 
                        ?>
                        <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                            <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a> - <small><?php the_field('input'); ?> to <?php the_field('exit'); ?></small></li>

                        <?php endwhile; wp_reset_postdata(); endif; ?>
                        <!-- Fim loop Experience -->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End about -->

    <!-- Contact -->
    <section id="contact" class="contact py-5">
        <div class="container">
            <h2 class="pt-5">Contact <strong>US</strong></h2>
    
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem
                tempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat
                facilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem
                doloremque similique deleniti incidunt? Quod, fugit quas.</p>
            
            <div class="flex-container">
                <div class="means-contact">
                    <h2>means of contact</h2>
                    <h3>telephones</h3>
                    <div class="form-group">
                        <ul>
                            <li><strong>Fixed: </strong>
                                <p>+55 5654-56489</p>
                            </li>
                            <li><strong>Cell Phone: </strong>
                                <p>+55 5654-56489</p>
                            </li>
                        </ul>
                    </div>
                    <h3>E-mails</h3>
                    <div class="form-group">
                        <ul>
                            <li><strong>Option 1: </strong>
                                <p><a href="mailto:bitelo@gmail.com">bitelo@gmail.com</a></p>
                            </li>
                            <li><strong>Option 2: </strong>
                                <p><a href="mailto:kolitech@koli.tech">kolitech@koli.tech</a></p>
                            </li>
                        </ul>
                    </div>
                    <h3>social media</h3>
                    <ul class="mb-5">
                        <li><a href="#"><i class="fab fa-facebook"></a></i></li>
                        <li><a href="#"><i class="fab fa-twitter"></a></i></li>
                        <li><a href="#"><i class="fab fa-instagram"></a></i></li>
                    </ul>
                </div>
                
                <form class="form-contact">
                    <h2>send your message</h2>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="name@example.com">
                    </div>
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="subject" class="form-control" id="subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                    </div>
                
                    <button class="btn my-btn-primary" type="submit">Send</button>
                </form>
                
            </div>
        </div>

        
    </section>
    <!-- Contact -->

<?php get_footer(); ?> 
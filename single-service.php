<?php 
	get_header('pages');
?>

<section class="py-5">
		<div class="container">
			<hr>
			<h2 class="py-2"><strong><?php the_title(); ?></strong></h2>
			<hr>

			<div class="row">
				<div class="container">
					<div class="flex-container">

						<!-- Start Articles -->
						<div class="articles">

					
					<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
						<article class="article">
							
							<!-- <small><h3 class="mb-2"><?php //the_title(); ?></h3></small> -->
							<!-- <p class="mb-2"><strong>Theme:</strong> <?php //the_field('theme'); ?></p> -->

							<figure>
								<?php if ( has_post_thumbnail() ) : ?>
									<?php the_post_thumbnail( 'thumbs' ); ?>
								<?php endif; ?>
							</figure>

							<?php the_content(); ?>
						</article>
					<?php endwhile;	endif; ?>
					<strong><a href="<?php echo $template_directory;?>/home/service/" class="btn my-btn-primary"><i class="fas fa-arrow-left mr-1"></i>All Services</a></strong>
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
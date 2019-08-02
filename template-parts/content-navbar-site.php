<?php $template_directory = get_template_directory_uri(); ?>
<div class="container">
    <a class="navbar-brand" href="/"><img src="<?php echo $template_directory;?>/image/logo.svg" alt=""></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#scroll">
        <span class="navbar-toggler"><i class="fas fa-bars"></i></span>
    </button>

    <div class="collapse navbar-collapse" id="scroll">

    
        <ul class="navbar-nav ml-auto">
            <?php
              wp_nav_menu( array(
                  'theme_location'    => 'third',
                  'depth'             => 1,
                  'container'         => 'div',
                  'container_class'   => 'collapse navbar-collapse',
                  'container_id'      => 'bs-example-navbar-collapse-1',
                  'menu_class'        => 'nav navbar-nav ml-auto',
                  'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                  'walker'            => new WP_Bootstrap_Navwalker(),
              ) );
            ?>
        </ul>
    </div>
</div>
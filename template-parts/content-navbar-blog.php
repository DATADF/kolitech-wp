<?php $template_directory = get_template_directory_uri(); ?>
<div class="container">
          <a class="navbar-brand" href="/"><img src="<?php echo $template_directory;?>/image/logo.svg" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler"><i class="fas fa-bars text-dark"></i></span>
          </button>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="navbar-nav ml-auto">
            
            <?php
              wp_nav_menu( array(
                  'theme_location'    => 'primary',
                  'depth'             => 1,
                  'container'         => 'div',
                  'container_class'   => 'collapse navbar-collapse',
                  'container_id'      => 'bs-example-navbar-collapse-1',
                  'menu_class'        => 'nav navbar-nav ml-auto',
                  'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                  'walker'            => new WP_Bootstrap_Navwalker(),
              ) );
            ?>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Categories
              </a>
              <!-- Navgation Modo antigo wp_list_categories() -->
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <?php wp_list_categories('title_li='); ?>
              </ul>
            </li>
          </ul>
      </div>
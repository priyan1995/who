<!doctype html>
<html <?php language_attributes(); ?> style="margin-top:0 !important">

<head>
  <!-- Required meta tags -->
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">


  <style>
    svg {
      width: 27%;
      height: auto;
      display: block;
    }
  </style>


  <title><?php wp_title(); ?></title>
  <?php wp_head(); ?>
</head>

<body class="no-touch no-js">
  <?php /*
    <div class="header">
      <div class="header-wrap">
        <div class="container-fluid pd-top-bar">
        </div>
        <div class="container pd-menu-bar">
          <div class="row">
              <nav class="navbar navbar-expand-lg navbar-dark " id="pd_fixed_nav">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="main-menu-wrap collapse navbar-collapse" id="navbarSupportedContent">
                  <?php
                  wp_nav_menu(
                    array(
                      'depth'       => 10,
                      'theme_location'  => 'primary',
                      'container_class' => 'false',
                      'container_id'    => 'navbarNavDropdown',
                      'menu_class'      => 'navbar-nav',
                      'fallback_cb'     => '',
                      'menu_id'         => 'main-menu',
                      'walker'          => new WP_Bootstrap_Navwalker(),
                    )
                  );
                  ?>

                </div>
              </nav> 
          </div>
        </div>
      </div>
    </div>
    */
    ?>


<header class="site-header">
		<div class="site-header__inner section section--large grid grid--spaced">
			<div class="site-header__logo-wrapper grid__col grid__col--5 grid__col--m-12">
				<a class="site-logo" href="/who"> 
 
				</a>
			</div>

			<div class="site-header__menu-wrapper grid__col grid__col--7 grid__col--m-12">
				<div class="site-menu-bar mobile-only">
					<div class="menu-item">
						<a href="#">
							<div class="menu-item__icon">
								<?php //echo file_get_contents(TU_IMG_DIR . 'icons/account.svg'); ?>
							</div>

							<div>My Account</div>
						</a>
					</div>

					<div class="menu-item menu-item--hamburger">
						<a class="js-toggle-menu" href="#">
							<div>Menu</div>

							<div class="menu-item__icon">
								<?php //echo file_get_contents(TU_IMG_DIR . 'icons/hamburger.svg'); ?>
							</div>
						</a>
					</div>
				</div>

				<div class="site-header__menu-wrapper-inner">
					<ul class="site-menu-secondary">
						<li class="menu-item mobile-hide">
							<a href="#">
								<div class="menu-item__icon">
									<?php// echo file_get_contents(TU_IMG_DIR . 'icons/account.svg'); ?>
								</div>

								<div>My Account</div>
							</a>
						</li>
						<li class="menu-item">
							<a href="#">
								<div class="menu-item__icon">
									<?php // echo file_get_contents(TU_IMG_DIR . 'icons/logout.svg'); ?>
								</div>

								<div>Logout</div>
							</a>
						</li>

						<li class="menu-item menu-item--has-sub-menu">
							<a href="#">
								English
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu"">
								<li class=" sub-menu-item">
								<a href="#">Español</a>
						</li>
						<li class="sub-menu-item">
							<a href="#">Français</a>
						</li>
					</ul>
					</li>
					</ul>

					<ul class="site-menu-primary">

						<!-- Check to highlight menu item if on relevent page -->

						 

						<li class="menu-item menu-item--membership <?php echo $current_class; ?>">
							<a href="#">
								School
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down-deep.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu">
								<li class="sub-menu-item">
									<a href="#">My Account</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">My directory</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Resources</a>
								</li>
							</ul>
						</li>

						<!-- Check to highlight menu item if on relevent page -->

						 

						<li class="menu-item menu-item--elections <?php echo $current_class; ?>">
							<a href="#">
								Elections
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down-deep.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu">
								<li class="sub-menu-item">
									<a href="#">My Account</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Members directory</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Resources</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>


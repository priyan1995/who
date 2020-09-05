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
  <div class="wrapper">
    <div class="header">
      <div class="header-wrap">
        <div class="container-fluid pd-top-bar">

        </div>

        <div class="container pd-menu-bar">
          <div class="row">

            <?php /*

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
              */
            ?>

          </div>

        </div>
      </div>
    </div>
  </div>
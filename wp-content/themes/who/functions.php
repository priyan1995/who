<?php

include_once('inc/class-wp-bootstrap-navwalker.php');

// Register Resources
function who() {

	// wp_register_style( 'bootstrap-css', get_template_directory_uri() . '/assets/css/bootstrap.min.css' );
	wp_register_style('owl-css', get_template_directory_uri() . '/assets/css/owl.carousel.min.css');
	wp_register_style('owl-theme-css', get_template_directory_uri() . '/assets/css/owl.theme.default.min.css');
	wp_register_style('myfont-webfont', get_template_directory_uri() . '/assets/MyFontsWebfontsKit.css');
	wp_register_style( 'stylesheet', get_stylesheet_uri() );

	// wp_enqueue_style( 'bootstrap-css' );
	wp_enqueue_style('owl-css');
	wp_enqueue_style('owl-theme-css');	
	wp_enqueue_style( 'stylesheet' );
	wp_enqueue_style( 'myfont-webfont' );


	
	wp_register_script( 'bootstrap-js', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array('jquery'), '1.1', true );
	wp_register_script( 'owl-js', get_template_directory_uri() . '/assets/js/owl.carousel.min.js', array('jquery'), '1.1', true );
	wp_register_script( 'main-js', get_template_directory_uri() . '/assets/js/main.js', array('jquery'), '1.1', true );
	wp_register_script( 'jquer-js', get_template_directory_uri() . '/assets/js/min/jquery.2.2.4.min.js', array('jquery'), '1.1', true );
	wp_register_script( 'all-min-js', get_template_directory_uri() . '/assets/js/min/all.min.js', array('jquery'), '1.1', true );



	wp_enqueue_script( 'jquery' );
	wp_enqueue_script( 'bootstrap-js' );
	wp_enqueue_script('owl-js');
	wp_enqueue_script('main-js');
	wp_enqueue_script('jquer-js');
	wp_enqueue_script('all-min-js');


}
add_action( 'wp_enqueue_scripts', 'who' );

// Menus
add_action( 'after_setup_theme', 'register_nero_primary_menu' );
function register_nero_primary_menu() {
	register_nav_menus(array( 
		'primary'	=> 	__( 'Primary Menu', 'Who' ),
		'footer'	=>	__( 'Footer Menu', 'Who' )

	 ));
}

// === theme option page

add_action("admin_menu", "mythemeoptions");

function mythemeoptions()
{

  add_menu_page(
    "theme-options", //page title
    "Theme-options", //Menu title
    "manage_options", //Capability
    "theme-options", //Menu Slug
    "mycustom_options", //callback funtion
    "dashicons-admin-generic" //icon

  );
}


function mycustom_options()
{
  // we have to link our custom settings
  ?>
  <div>
  <h1>Theme Options Panel</h1>
  <?php settings_errors(); ?>
    <form action="options.php" method="post">
      <?php
      settings_fields("section");
      do_settings_sections("theme-options");
      submit_button();
      ?>
    </form>
  </div>
<?php
}


// theme options settings page
function theme_options_setting()
{

	add_settings_section(
		"section", //id of setting section
		"All Page", // title
		"", // callback function
		"theme-options" // page
	  );

	  add_settings_field(
		"facebook_url",
		"Facebook Url",
		"display_fb_url",
		"theme-options",
		"section"
	
	  );

	  add_settings_field(
		"twitter_url",
		"Twitter Url",
		"display_twitter_url",
		"theme-options",
		"section"
	
	  );

	  add_settings_field(
		"footer_credit",
		"Footer Credit",
		"display_footer_credit",
		"theme-options",
		"section"
	
	  );



register_setting("section", "facebook_url");
register_setting("section", "twitter_url");
register_setting("section", "footer_credit");

}

add_action("admin_init", "theme_options_setting");

function display_twitter_url()
{?>
  <input type="url" name="twitter_url" value="<?php echo get_option('twitter_url'); ?>" id="twitter_url" /> 
<?php
}

function display_fb_url()
{?>
  <input type="url" name="facebook_url" value="<?php echo get_option('facebook_url'); ?>" id="facebook_url" /> 
<?php
}

function display_footer_credit()
{?>
  <input type="text" name="footer_credit" value="<?php echo get_option('footer_credit'); ?>" id="footer_credit" /> 
<?php
}
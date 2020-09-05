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




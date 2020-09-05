<?php
/*
Template Name: page-2 Template
*/
get_header();
?>

<div class="site-header-spacer"></div>

<section class="site-banner site-banner--membership">
	<div class="section section--large">
		<!-- <h1 class="site-banner__title">WHO number<br> is open to both<br> <span class="txt-light">organisations &amp; individuals</span></h1> -->
		<?php the_field('main_heading'); ?>
	</div>
</section>

<section class="section section--large grid grid--spaced grid--spaced-6 spacing-large-bottom">

	<?php

	$memberInf = new WP_Query(array('orderby' => 'date', 'post_type' => 'membership_info', 'order' => 'DESC'));
	if ($memberInf->have_posts()) :
		while ($memberInf->have_posts()) :
			$memberInf->the_post();

	?>

			<div class="link-block link-block--small bg-blue grid__col grid__col--6 grid__col--m-12 txt-light post-styles">
				<h2 class="txt-light"><?php the_title(); ?></h2>
				<p><?php the_content(); ?></p>
				<a class="btn btn--light" href="<?php the_field('link_url'); ?>"><?php the_field('link_text'); ?></a>
			</div>

	<?php
		endwhile;
	endif;
	?>


</section>


<?php
get_footer();
?>
<?php
get_header();
the_post();
?>

<div class="site-header-spacer"></div>


<section class="site-banner site-banner--membership pd-white-banner">
    <div class="section section--large">
        <h1><?php the_title(); ?></h1>
    </div>

    <div class="pd-post-top-line-date">
        <div class="section section--large">
            <h3><?php the_date(); ?></h3>
        </div>
    </div>
</section>

<section class="section section--large grid grid--spaced grid--spaced-6 spacing-large-bottom">

    <div class="pd-blog-content">

        <img src="<?php the_field('image_blog'); ?>">
        <p class="pd-blog-para"><?php the_field('infromation_blog'); ?></p>
    </div>







</section>

<?php
get_footer();
?>
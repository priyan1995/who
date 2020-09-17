<?php
/*
Template Name: Blog Page Template
*/
get_header();
the_post();

?>



<div class="site-header-spacer"></div>

<!-- <section class="site-banner site-banner--dashboard">
    <div class="section section--large">
        <h1><?php // the_field('main_page_title'); ?></h1>
    </div>
</section> -->



<section class="events spacing-small-top spacing-large-bottom spacing-tb-none-top">
    <div class="events__txt">
        <div class="grid section section--large spacing-large-top">
            <div class="grid__col grid__col--8 grid__col--m-12">
                <h2 class="events__title"><?php the_field('main_page_title'); ?></h2>
            </div>
        </div>
    </div>

    <div class="section section--large grid grid--spaced">

        <?php
        $blogs = new WP_Query(array('orderby' => 'date', 'post_type' => 'blog_posts', 'order' => 'DESC'));
        if ($blogs->have_posts()) :
            while ($blogs->have_posts()) :
                $blogs->the_post();

        ?>

                <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
                    <div class="event__img" style="background-image: url(<?php the_field('image_blog'); ?>);"></div>

                    <div class="event__txt spacing-small-all post-styles">
                        <h3 class="event__title txt-light"><?php the_title(); ?></h3>
                        <a class="btn btn--light" href="<?php the_permalink(); ?>">More info</a>
                    </div>
                </article>

        <?php
            endwhile;
        endif;
        ?>

    </div>
</section>


<?php
get_footer();
?>
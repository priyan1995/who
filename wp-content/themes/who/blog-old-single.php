<?php
get_header();
the_post();
?>

<div class="site-header-spacer"></div>

<section class="site-banner site-banner site-banner--slim">
    <div class="section section--large">
        <h1 class="txt-light">Blog View</h1>
    </div>
</section>

<section class="resources">
    <a class="resources__menu-bar js-toggle-resource-menu" href="#">
        <div class="section section--large txt-upper txt-light">
            
        </div>
    </a>

    <div class="section section--large grid grid--spaced">
        <div class="resources__left grid__col grid__col--3 spacing-medium pd-blog-view_rel">

            <?php

            $resource = new WP_Query(array('orderby' => 'date', 'post_type' => 'blog_posts', 'order' => 'DESC','showposts'=>'4'));
            if ($resource->have_posts()) :
                while ($resource->have_posts()) :
                    $resource->the_post();
            ?>

            <a href="<?php the_permalink(); ?>">
            <div class="pd-blg-card">
                <p><?php the_title(); ?></p>
                <img src="<?php the_field('image_blog'); ?>" >
            </div> 
            </a>


            <?php
                endwhile;
            endif;
            wp_reset_query();
            ?>

        </div>

        <div class="resources__right grid__col grid__col--8 spacing-medium post-styles">
            <ul class="resources__results">



                <li class="resources__result">
                    <h3><?php the_title(); ?></h3>
                    <img src="<?php the_field('image_blog'); ?>">
                    <p><?php the_content(); ?></p>
                </li>



            </ul>
        </div>
    </div>
</section>

<?php
get_footer();
?>
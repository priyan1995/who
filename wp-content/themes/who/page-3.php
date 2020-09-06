<?php
/*
Template Name: page-3 Template
*/
get_header();
?>

<div class="site-header-spacer"></div>

<section class="site-banner site-banner site-banner--slim">
    <div class="section section--large">
        <h1 class="txt-light">Resources</h1>
    </div>
</section>

<section class="resources">
    <a class="resources__menu-bar js-toggle-resource-menu" href="#">
        <div class="section section--large txt-upper txt-light">
            Explore
        </div>
    </a>

    <div class="section section--large grid grid--spaced">
        <div class="resources__left grid__col grid__col--4 spacing-medium">

            <ul class="resources__menu">
                <?php
                $resMenu = new WP_Query(array('orderby' => 'date', 'post_type' => 'resourse_menu', 'order' => 'ASC'));
                if ($resMenu->have_posts()) :
                    while ($resMenu->have_posts()) :
                        $resMenu->the_post();
                ?>
                        <li class="menu-item
                <?php
                        $sub_men = get_field('sub_menu');
                        if ($sub_men == true) {
                ?>
                 menu-item--has-sub-menu <?php } ?> ">
                            <a href="<?php the_field('resource_menu_link'); ?>"><?php the_title(); ?></a>
                            <?php the_field('sub_menus'); ?>

                            <!-- <ul class="sub-menu">
                                <li class="sub-menu-item active">
                                    <a href="#">Tuberculosis</a>
                                </li>
                            </ul> -->
                        </li>
                <?php
                    endwhile;
                endif;
                ?>
            </ul>

        </div>

        <div class="resources__right grid__col grid__col--8 spacing-medium post-styles">
            <ul class="resources__results">

                <?php

                $resource = new WP_Query(array('orderby' => 'date', 'post_type' => 'resources_items', 'order' => 'DESC'));
                if ($resource->have_posts()) :
                    while ($resource->have_posts()) :
                        $resource->the_post();

                ?>

                        <li class="resources__result">
                            <p><a href="<?php the_field('link_resources'); ?>"><?php the_title(); ?></a></p>
                        </li>

                <?php
                    endwhile;
                endif;
                ?>

            </ul>
        </div>
    </div>
</section>

<?php
get_footer();
?>
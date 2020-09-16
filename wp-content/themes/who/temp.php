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

            <div class="tab resources__menu">

               

                <!-- tab menu -->
                <?php
                $terms = get_terms(array(
                    'taxonomy'   => 'blog_category',
                    'hide_empty' => true,
                    'orderby'=>'taxonomy'
                    
                ));

                foreach ($terms as $term) {

                    $slug = $term->slug;
                    $child = get_field('taxonomy_level', $term);

                ?>
                    <button class=" menu-item <?php if ($child == 2) {
                                                    echo 'pd-child-menu-level-2';
                                                }elseif($child == 3){
                                                    echo 'pd-child-menu-level-3';
                                                } ?>"
                                                 onclick="openCity(event, '<?php echo $term->term_id; ?>')">
                        <?php echo $term->name; ?><?php echo $child; ?>
                    </button>
                <?php  } ?>
            </div>

        </div>

        <!-- tab content -->
        <div class="resources__right grid__col grid__col--8 spacing-medium post-styles">

            <?php
            $terms = get_terms(array(
                'taxonomy'   => 'blog_category',
                'hide_empty' => true,
                'post_type' => 'blog_post'
            ));
         
            foreach ($terms as $term) {

            ?>
                <?php

                $posts = new WP_Query("taxonomy=blog_category&term=$term->slug");

                if ($posts->have_posts()) : while ($posts->have_posts()) : $posts->the_post();

                ?>
                        <div id="<?php echo $term->term_id; ?>" class="tabcontent pd-blog-items-short-desc">
                        
                            <pre><?php //var_dump($term); ?></pre>

                            <a href="<?php the_permalink(); ?>">
                                <p><?php the_title(); ?> - <?php the_field('short_description_blog') ?></p>
                            </a>
                        </div>

                <?php
                    endwhile;
                endif;
                ?>
            <?php } ?>


        </div>
    </div>
</section>

<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>

<?php
get_footer();
?>
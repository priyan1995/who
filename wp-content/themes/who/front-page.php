<?php
/*
Template Name: Home Page Template
*/
get_header();
the_post();

?>



<div class="site-header-spacer"></div>

<section class="site-banner site-banner--dashboard">
    <div class="section section--large">      
    <h1><?php the_field('main_title'); ?></h1>
    </div>
</section>

<section class="section section--large spacing-large-bottom">
    <div class="link-block-large-outer grid">
        <div class="link-block link-block--large-img grid__col--6 grid__col--m-12">
            <div class="link-block__img" style="background-image: url(<?php the_field('image_m_card'); ?>)"></div>

            <div class="link-block__txt post-styles">
                <h2 class="link-block__title"><?php the_field('title_card_1'); ?></h2>
                <p class="txt-large"><?php the_field('card_desc_m_card'); ?></p>
                <a class="btn" href="<?php the_field('button_link_m_card'); ?>"><?php the_field('button_text_m_card'); ?></a>
            </div>
        </div>

        <div class="link-block link-block--large-img grid__col--6 grid__col--m-12">
            <div class="link-block__img" style="background-image: url(<?php the_field('image_m_card_2'); ?>)"></div>

            <div class="link-block__txt link-block__txt--alt post-styles">
                <h2 class="link-block__title"><?php the_field('title_card_2'); ?></h2>
                <p class="txt-large"><?php the_field('card_desc_m_card_2'); ?></p>
                <a class="btn" href="<?php the_field('button_link_m_card_2'); ?>"><?php the_field('button_text_m_card_2'); ?></a>
            </div>
        </div>
    </div>
</section>

<section class="events spacing-small-top spacing-large-bottom spacing-tb-none-top">
    <div class="events__txt">
        <div class="grid section section--large spacing-large-top">
            <div class="grid__col grid__col--8 grid__col--m-12">
                <h2 class="events__title"><?php the_field('card_section_2_title'); ?></h2>
            </div>
        </div>
    </div>

    <div class="section section--large grid grid--spaced">
        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Courses</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">WHO traning &amp; education</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>

        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Events</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">6th President's centinnial dinner</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>

        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Events</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">WHO Conference</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>
    </div>
    <div class="site-header-spacer"></div>
    <div class="section section--large grid grid--spaced">
        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Courses</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">WHO traning &amp; education</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>

        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Events</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">6th President's centinnial dinner</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>

        <article class="event grid__col grid__col--4 grid__col--tb2-12 grid__col--m-12">
            <div class="event__img" style="background-image: url(http://via.placeholder.com/348x240);"></div>

            <a class="event__tag txt-upper" href="#">Events</a>

            <div class="event__txt spacing-small-all post-styles">
                <h3 class="event__title txt-light">WHO Conference</h3>

                <a class="btn btn--light" href="#">More info</a>
            </div>
        </article>
    </div>
</section>


<?php
get_footer();
?>

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
                <li class="menu-item">
                    <a href="#">About WHO</a>
                </li>

                <li class="menu-item">
                    <a href="#">Webinars</a>
                </li>

                <li class="menu-item menu-item--has-sub-menu">
                    <a href="#">Official Documents</a>

                    <ul class="sub-menu">
                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-item menu-item--has-sub-menu menu-item--sub-menu-active active">
                    <a href="#">Scientific Sections</a>

                    <ul class="sub-menu">
                        <li class="sub-menu-item active">
                            <a href="#">Tuberculosis</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">HIV</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Adult &amp; Child Lung Health</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Tobacco Control</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-item menu-item--has-sub-menu">
                    <a href="#">WHO Regions</a>

                    <ul class="sub-menu">
                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>

                        <li class="sub-menu-item">
                            <a href="#">Sub menu item</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

        <div class="resources__right grid__col grid__col--8 spacing-medium post-styles">
            <ul class="resources__results">
                <li class="resources__result">
                    <p><a href="#">Citizen News - Webinar on new shorter, cheaper and possibly better MDR-TB treatment</a></p>
                </li>

                <li class="resources__result">
                    <p><a href="#">Citizen News - Webinar on new shorter, cheaper and possibly better MDR-TB treatment</a></p>
                </li>

                <li class="resources__result">
                    <p><a href="#">Citizen News - Webinar on new shorter, cheaper and possibly better MDR-TB treatment</a></p>
                </li>

                <li class="resources__result">
                    <p><a href="#">Citizen News - Webinar on new shorter, cheaper and possibly better MDR-TB treatment</a></p>
                </li>
            </ul>
        </div>
    </div>
</section>

<?php 
 get_footer();
?>
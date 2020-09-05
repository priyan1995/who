<?php
/*
Template Name: Home Page Template
*/
get_header();
?>

<header class="site-header">
		<div class="site-header__inner section section--large grid grid--spaced">
			<div class="site-header__logo-wrapper grid__col grid__col--5 grid__col--m-12">
				<a class="site-logo" href="/who"> 
 
				</a>
			</div>

			<div class="site-header__menu-wrapper grid__col grid__col--7 grid__col--m-12">
				<div class="site-menu-bar mobile-only">
					<div class="menu-item">
						<a href="#">
							<div class="menu-item__icon">
								<?php //echo file_get_contents(TU_IMG_DIR . 'icons/account.svg'); ?>
							</div>

							<div>My Account</div>
						</a>
					</div>

					<div class="menu-item menu-item--hamburger">
						<a class="js-toggle-menu" href="#">
							<div>Menu</div>

							<div class="menu-item__icon">
								<?php //echo file_get_contents(TU_IMG_DIR . 'icons/hamburger.svg'); ?>
							</div>
						</a>
					</div>
				</div>

				<div class="site-header__menu-wrapper-inner">
					<ul class="site-menu-secondary">
						<li class="menu-item mobile-hide">
							<a href="#">
								<div class="menu-item__icon">
									<?php// echo file_get_contents(TU_IMG_DIR . 'icons/account.svg'); ?>
								</div>

								<div>My Account</div>
							</a>
						</li>
						<li class="menu-item">
							<a href="#">
								<div class="menu-item__icon">
									<?php // echo file_get_contents(TU_IMG_DIR . 'icons/logout.svg'); ?>
								</div>

								<div>Logout</div>
							</a>
						</li>

						<li class="menu-item menu-item--has-sub-menu">
							<a href="#">
								English
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu"">
								<li class=" sub-menu-item">
								<a href="#">Español</a>
						</li>
						<li class="sub-menu-item">
							<a href="#">Français</a>
						</li>
					</ul>
					</li>
					</ul>

					<ul class="site-menu-primary">

						<!-- Check to highlight menu item if on relevent page -->

						 

						<li class="menu-item menu-item--membership <?php echo $current_class; ?>">
							<a href="#">
								School
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down-deep.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu">
								<li class="sub-menu-item">
									<a href="#">My Account</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">My directory</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Resources</a>
								</li>
							</ul>
						</li>

						<!-- Check to highlight menu item if on relevent page -->

						 

						<li class="menu-item menu-item--elections <?php echo $current_class; ?>">
							<a href="#">
								Elections
								<span class="menu-item__icon">
									<?php //echo file_get_contents(TU_IMG_DIR . 'icons/caret-down-deep.svg'); ?>
								</span>
							</a>

							<ul class="sub-menu">
								<li class="sub-menu-item">
									<a href="#">My Account</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Members directory</a>
								</li>

								<li class="sub-menu-item">
									<a href="#">Resources</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<div class="site-header-spacer"></div>

<section class="site-banner site-banner--dashboard">
		<div class="section section--large"> 
			<h1 class="site-banner__title ">All The latest<br> information &amp; resources<br> <span class="txt-highlight-2">at your fingertips</span></h1>
		</div>
	</section>

	<section class="section section--large spacing-large-bottom">
		<div class="link-block-large-outer grid">
			<div class="link-block link-block--large-img grid__col--6 grid__col--m-12">
				<div class="link-block__img" style="background-image: url(http://via.placeholder.com/348x240)"></div>

				<div class="link-block__txt post-styles">
					<h2 class="link-block__title">Membership</h2>
					<p class="txt-large">Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.</p>
					<a class="btn" href="#">Membership</a>
				</div>
			</div>

			<div class="link-block link-block--large-img grid__col--6 grid__col--m-12">
				<div class="link-block__img" style="background-image: url(http://via.placeholder.com/348x240)"></div>

				<div class="link-block__txt link-block__txt--alt post-styles">
					<h2 class="link-block__title">Elections</h2>
					<p class="txt-large">Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.</p>
					<a class="btn" href="#">Cast your vote</a>
				</div>
			</div>
		</div>
	</section>

	<section class="events spacing-small-top spacing-large-bottom spacing-tb-none-top">
		<div class="events__txt">
			<div class="grid section section--large spacing-large-top">
				<div class="grid__col grid__col--8 grid__col--m-12">
					<h2 class="events__title">Upcoming courses &amp; events you won't want to miss</h2>
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
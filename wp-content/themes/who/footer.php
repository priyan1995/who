<footer class="site-footer bg-light-blue pd-footer">
	<div class="site-footer__inner section section--large">
		<ul class="social">
			<li class="social__item social__item--facebook">
				<a href="#" target="_blank">
					<img src="<?php echo bloginfo('template_url'); ?>/assets/img/icons/facebook.svg"></a>
			</li>

			<li class="social__item social__item--twitter">
				<a href="#" target="_blank">
					<img src="<?php echo bloginfo('template_url'); ?>/assets/img/icons/twitter.svg"></a>
			</li>
		</ul>

		<?php
		wp_nav_menu(
			array(
				'depth' => '10',
				'theme_location' => 'footer',
				'container_class' => '',
				'menu_class' => 'site-footer__menu',
				'menu_id' => 'footer',
				'walker' => new WP_Bootstrap_Navwalker(),

			)
		);

		?>

		<div class="site-footer__copy">
			<p class="txt-small">&copy; 2017 WHO. All Rights Reserved</p>
		</div>
	</div>
</footer>





<?php wp_footer();  ?>
</body>

</html>
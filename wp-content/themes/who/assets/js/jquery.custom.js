$ = jQuery;

$(document).ready(function() {
	/*--------------------------------------------
	---- Setup
	--------------------------------------------*/
	//---- Variables
	var transition_speed = 250;

	var svg_close      = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16"><defs><style>.f53ed315-4e43-4fe2-a6d8-0250ce6547e3{fill:none;stroke:#2a70b8;stroke-linecap:round;stroke-linejoin:round;stroke-width:2px;}</style></defs><title>Asset 3</title><g id="036efaf6-8330-4f17-a988-aab4e11edb4f" data-name="Layer 2"><g id="2d60335a-0ab5-4f62-90e9-363a004d72ea" data-name="Layer 1"><line class="f53ed315-4e43-4fe2-a6d8-0250ce6547e3" x1="1" y1="1" x2="15" y2="15"/><line class="f53ed315-4e43-4fe2-a6d8-0250ce6547e3" x1="15" y1="1" x2="1" y2="15"/></g></g></svg>';
	var svg_caret_down = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 6"><defs><style>.a2be4809-eecf-453a-b0f9-cef8521bae6d{fill:#2a70b8}</style></defs><g id="7d249a28-a5c8-43be-a309-49ce0614f815" data-name="Layer 2"><path id="3591a89c-7219-472a-b52e-4f6c45c4b943" d="M6 6a1 1 0 0 1-.62-.22l-5-4A1 1 0 1 1 1.63.22L6 3.72l4.38-3.5a1 1 0 1 1 1.25 1.56l-5 4A1 1 0 0 1 6 6z" class="a2be4809-eecf-453a-b0f9-cef8521bae6d" data-name="Layer 1"/></g></svg>';
	var svg_plus       = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18"><defs><style>.\35 14a3be9-1620-4e36-a20d-a61418511d3d{fill:#2a70b8}</style></defs><g id="a40f789f-57ee-4d43-a301-dfad4bb995de" data-name="Layer 2"><g id="5d679066-b9fc-4e81-957b-6ed6e88283b4" data-name="Layer 1"><path d="M9 18a1 1 0 0 1-1-1V1a1 1 0 0 1 2 0v16a1 1 0 0 1-1 1z" class="514a3be9-1620-4e36-a20d-a61418511d3d"/><path d="M17 10H1a1 1 0 0 1 0-2h16a1 1 0 0 1 0 2z" class="514a3be9-1620-4e36-a20d-a61418511d3d"/></g></g></svg>';
	var svg_minus      = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 2"><defs><style>.\30 cc1f243-7191-4cbf-8b90-93690dff9d7f{fill:#2a70b8}</style></defs><g id="7e5ca780-3e08-414f-b27d-28a60c2bf8b1" data-name="Layer 2"><path id="3af811f8-01b2-4ba7-9a03-682ba9648053" d="M17 2H1a1 1 0 0 1 0-2h16a1 1 0 0 1 0 2z" class="0cc1f243-7191-4cbf-8b90-93690dff9d7f" data-name="Layer 1"/></g></svg>';

	var window_width = $(window).width();

	//---- Remove 'no-touch' class for touch devices
	var is_touch_device = 'ontouchstart' in document.documentElement;

	if(is_touch_device) {
		$('body').removeClass('no-touch');
	}

	//---- Remove 'no-js' class when JavaScript is enabled
	$('body').removeClass('no-js');


	/*--------------------------------------------
	---- Tabbed
	--------------------------------------------*/
	$('.js-tab').on('click', function(e) {
		e.preventDefault();

		var content = $(this).attr('data-tab');

		// Remove class from current active tab and content
		$('[data-tab].active, [data-tab-content].active').removeClass('active');

		// Add class to new tab and content
		$('[data-tab="' + content + '"], [data-tab-content="' + content + '"]').addClass('active');
	});


	/*--------------------------------------------
	---- Textarea Display Max Length
	--------------------------------------------*/
	$('textarea[maxlength]').each( function() {

		// Wrap the textarea and append a counter element to the new parent
		$(this).wrap('<div class="textarea-wrapper"></div>');
		$(this).closest('.textarea-wrapper').append('<span class="textarea-count"></span>');

		count_chars($(this));
	});

	$('textarea').on('input', function () {
	    count_chars($(this));
	});

	function count_chars(el) {
		// Get the max and current value string lengths from the field
		var max = parseInt(el.attr('maxlength'));
		var current = parseInt(el.val().length);

		// Remaining characters allowed in the field
		var remaining = max - current;

		// Update the counter element belonging to the field's parent
		el.closest('.textarea-wrapper').find('.textarea-count').text('(' + remaining + ' characters left)');
	}


	/*--------------------------------------------
	---- Form Steps
	--------------------------------------------*/
	$('.form-step').each( function() {
		// Set the display styles in advance for smooth transitions
		if ($(this).hasClass('active')) {
			$(this).find('.form-step__inner').css('display', 'block');
		} else {
			$(this).find('.form-step__inner').css('display', 'none');
		}
	});


	$(document).on('click', ".js-toggle-form-step.inactive", function (e) {
		e.preventDefault();
		var parent = $(this).closest('.form-steps');

		// Switch classes on the current active step and slide up
		parent + $(' .form-step.active').removeClass('active').addClass('inactive').addClass('js-toggle-form-step').find('.form-step__inner').slideUp();

		// Switch classes on the new step and slide down
		$(this).addClass('active').removeClass('js-toggle-form-step').removeClass('inactive').find('.form-step__inner').slideDown();
	});


	/*--------------------------------------------
	---- Image File Input
	--------------------------------------------*/
    $('input[accept=".jpg,.jpeg"], input[accept="image/*"]').change(function(){
    	var input = this;
    	var parent = $(this).closest('.jcf-file');
    	var img = parent.find('.jcf-fake-input');

        if (input.files && input.files[0]) {
        	// If there is an image added
            var reader = new FileReader();
            
            reader.onload = function (e) {
            	// Set the thumbnail background image to the url of the added image
                img.css('background-image', 'url(' + e.target.result + ')');

                // Hide the text inside the thumbnail
                img.addClass('jcf-hide-text');
            }
            
            reader.readAsDataURL(input.files[0]);

            // Add a remove option to the input parent
            parent.append('<a class="jcf-file-remove js-file-remove" href="#">Remove file</a>');

        }
    });

    $(document).on('click', ".js-file-remove", function (e) {
    	e.preventDefault();

    	var parent = $(this).closest('.jcf-file');

    	// Reset the thumbnail background and show the text again
    	parent.find('.jcf-fake-input').css('background-image', '').removeClass('jcf-hide-text');

    	// Reset the field value
    	$('#imgupload').val('');

    	// Reset jcf fields and remove this button
    	tu_jcf();
    	$(this).remove();
    });



    /*--------------------------------------------
	---- Resources Menu
	--------------------------------------------*/
	// Add Style for smooth transitions
	$('.resources__menu .menu-item--sub-menu-active .sub-menu').css('display', 'block');

	$('.resources__menu .menu-item--has-sub-menu > a').on('click', function (e) {
		e.preventDefault();

		var parent = $(this).closest('li');

		if (!parent.hasClass('menu-item--sub-menu-active')) {
			// Toggle the current active sub menu and remove the class from its parent
			$('.resources__menu .menu-item--sub-menu-active .sub-menu').slideToggle();
			$('.resources__menu .menu-item--sub-menu-active').toggleClass('menu-item--sub-menu-active');
		}
	
		// Toggle the new sub menu and add the class to its parent 
		parent.find('.sub-menu').slideToggle();
		parent.toggleClass('menu-item--sub-menu-active');
	});

	 /*--------------------------------------------
	---- Resources Menu Bar
	--------------------------------------------*/
	$('.js-toggle-resource-menu').on('click', function (e) {
		e.preventDefault();

		$(this).toggleClass('active');
		$('.resources__left').fadeToggle();
	});


	/*--------------------------------------------
	---- Auto Prompt Modal
	--------------------------------------------*/
	if (getQueryVariable('modal')) {
		open_modal(getQueryVariable('modal'));
	}


	/*--------------------------------------------
	---- Get URL Query
	--------------------------------------------*/
	function getQueryVariable(variable) {
       var query = window.location.search.substring(1);
       var vars = query.split("&");

       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
	}



	/*--------------------------------------------
	---- Tooltip
	--------------------------------------------*/
	$('[data-tooltip]').mouseenter(function() {
		if ($(window).width() > 1024) {
			var data = $(this).attr('data-tooltip');
			var position = $(this).position();

			// Create the tooltip element
			$('body').append('<div class="tooltip" style=" top: ' + position.top + 'px; left: ' + position.left + 'px;">' + data + '</div>');
		}
	});

	$('[data-tooltip]').mouseleave(function() {
		if ($(window).width() > 1024) {
			// Find the tooltip and remove it
			$('.tooltip').remove();
		}
	});

	$('[data-tooltip]').on('click', function (e) {
		e.preventDefault();

		if ($(window).width() < 1024) {
			var data = $(this).attr('data-tooltip');

			// Create the tooltip element
			var html = '<div class="tooltip-overlay js-toggle-tooltip"></div>' + '<div class="tooltip">' + data + '</div>';
			$('body').addClass('lock-scroll').append(html);
		}
	});

	$(document).on('click', ".js-toggle-tooltip", function () {
		$('body').removeClass('lock-scroll');
		$('.tooltip, .tooltip-overlay').remove();
	});


	/*--------------------------------------------
	---- Site Menu
	--------------------------------------------*/
	$('.site-menu-primary .menu-item > a, .site-menu-secondary .menu-item--has-sub-menu > a').on('click', function(e) {
		e.preventDefault();

		var parent = $(this).closest('.menu-item');
		var submenu = parent.find('.sub-menu');

		if (!parent.hasClass('active')) {
			$('.site-header .menu-item').removeClass('active');

			if ($(window).width() > 670) {
				$('.site-header .sub-menu').fadeOut();

				if ($('.site-menu-overlay').length == 0) {
					$('body').append('<div class="site-menu-overlay js-toggle-sub-menu"></div>');
				}
			}
		} else if ($(window).width() > 670) {
			$('.site-menu-overlay').remove();
		}
		
		parent.toggleClass('active');

		if ($(window).width() > 670) {
			submenu.fadeToggle();
		}
	});


	$(document).on('click', ".js-toggle-sub-menu", function () {
		$('.site-menu-primary .menu-item, .site-menu-secondary .menu-item').removeClass('active');
		$('.site-header .sub-menu').fadeOut();
		$(this).remove();
	});


	/*--------------------------------------------
	---- Toggle Mobile Menu
	--------------------------------------------*/
	$('.js-toggle-menu').on('click', function(e) {
		e.preventDefault();

		$('.site-header__menu-wrapper-inner').toggleClass('active');

		$(this).toggleClass('active');
	});



	/*--------------------------------------------
	---- Toggle Modal
	--------------------------------------------*/
	//---- Inject Overlay
	$('.modal').prepend('<div class="modal__overlay"></div>');
	$('.modal').not('.modal--noclose').find('.modal__inner').append('<a class="modal__close" href="#">' + svg_close + '</a>');

	//---- Toggle
	$('[data-modal-target]').on('click', function(e) {
		e.preventDefault();

		var modal_link = $(this).attr('data-modal-target');
		open_modal(modal_link);
	});

	function open_modal(target) {
		// Get data attribute value
		$('[data-modal="' + target + '"]').fadeIn(transition_speed).addClass('active');
		$('body').addClass('lock-scroll');
	}

	$('.modal__close, .modal__close *, .modal__overlay').on('click', function(e) {
		e.preventDefault();

		$('.active').fadeOut(transition_speed).removeClass('active');
		$('body').removeClass('lock-scroll');

		// Reload iFrame (for stopping playing videos)
		$('.modal iframe').each(function() {
			var href = $(this).attr('src');
			$(this).attr('src', href);
		});
	});



	/*--------------------------------------------
	---- Reveal Content
	--------------------------------------------*/
	$('.js-reveal-content').on('click', function(e) {
		e.preventDefault();

		var target = $(this).attr('data-reveal');

		// If the clickable element has a data-switch attribute
		// Then switch the element's text with the value
		var text_switch = $(this).attr('data-switch');

		if (text_switch) {
			// Set the data attribute so we can switch back
			$(this).attr('data-switch', $(this).text());
			$(this).text(text_switch);
		}

		$(target).slideToggle();
	});

	/*--------------------------------------------
	---- Toggle Mobile Sections
	--------------------------------------------*/
	$('[data-m-toggle]').on('click', function(e) {
		e.preventDefault();

		if ($(window).width() <= 670) {
			var target = $(this).attr('data-m-toggle');
			$(this).toggleClass('m-toggle-active');
			$('[data-m-section="' + target + '"]').toggleClass('m-section-active');
		}
	});


	/*--------------------------------------------
	---- FitVids
	--------------------------------------------*/
	$('iframe').wrap('<div class="fitvids-container"></div>');
	$('.fitvids-container').fitVids();



	/*--------------------------------------------
	---- JCF (JavaScript Custom Fields)
	--------------------------------------------*/
	function tu_jcf_replace() {
		jcf.replaceAll();

		$('.jcf-select-opener').append('<span class="jcf-icon">' + svg_caret_down + '</span>');
		$('.jcf-btn-inc').append('<span class="jcf-icon">' + svg_plus + '</span>');
		$('.jcf-btn-dec').append('<span class="jcf-icon">' + svg_minus + '</span>');
	}

	function tu_jcf() {
		$('select').attr(
			'data-jcf',
			'{"wrapNative": false, "wrapNativeOnMobile": false, "fakeDropInBody": false, "multipleCompactStyle": true}'
		);

		tu_jcf_replace();
	}

	tu_jcf();

	// If any ajax occurs re-run JCF
	$(document).ajaxComplete(function() {
		tu_jcf();
	});


	/*--------------------------------------------
	---- Smooth Scroll
	--------------------------------------------*/
	$('.js-smooth-scroll').on('click', function(e) {
		e.preventDefault();

		var offset = $('.site-header').outerHeight();
		var scroll_href = $(this).attr('href');

		if($(scroll_href).length) {
			$('html, body').animate({
				scrollTop: $(scroll_href).offset().top - offset
			}, 450);
		}
	});



	/*--------------------------------------------
	---- Popups
	--------------------------------------------*/
	function tu_popup_center(url, title, passed_width, passed_height) {
		var dual_screen_left = window.screenLeft !== undefined ? window.screenLeft : screen.left;
		var dual_screen_top  = window.screenTop !== undefined ? window.screenTop : screen.top;

		var width  = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
		var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

		var left = ((width / 2) - (passed_width / 2)) + dual_screen_left;
		var top  = ((height / 3) - (passed_height / 3)) + dual_screen_top;

		var newWindow = window.open(url, title, 'scrollbars=yes, width=' + passed_width + ', height=' + passed_height + ', top=' + top + ', left=' + left);

		// Focus on new window
		if(window.focus) {
			newWindow.focus();
		}
	};

	$('.js-popup').on('click', function(e) {
		e.preventDefault();

		tu_popup_center($(this).attr('href'), $(this).find('.text').html(), 580, 470);
	});



	/*--------------------------------------------
	---- Reset Elements on Resize
	--------------------------------------------*/
	$(window).on('resize', function() {
		var new_width = $(window).width();

		if (new_width != window_width) {
			window_width = new_width;

			//---- Site Menu
			$('.site-header .menu-item').removeClass('active');
			$('.site-menu-overlay').remove();

			if ($(window).width() > 670) {
				$('.site-header .sub-menu').fadeOut().css('display', '');
			} else {
				$('.site-header .sub-menu').css('display', '');
			}

			//---- Resources Menu
			$('.resources__left').css('display', '');
			$('.resources__menu-bar').removeClass('active');

			//---- Tooltip
			$('.tooltip, .tooltip-overlay').remove();
		}
	});



	/*--------------------------------------------
	---- Other
	--------------------------------------------*/
	//---- Table Wrapper (to make responsive)
	$(window).on('load', function() {
		$('table').wrap('<div class="table-wrap"></div>');
	});
});

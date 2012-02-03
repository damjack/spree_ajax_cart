jQuery(document).ready(function() {
	$('a.ajax-cart').qtip({

		content: {
			text: 'Caricamento',
			ajax: {
				url: $("a.ajax-cart").attr('rel'),
				type: 'GET',
				once: false
			},
			title: {
				text: "Carrello:",
				button: true
			}
		},
		position: {
			at: 'bottom center',
			my: 'top center',
			viewport: $(window),
			effect: false
		},
		show: {
			event: 'mouseenter',
			solo: true
		},
		hide: 'unfocus',
		style: {
			classes: 'ui-tooltip-wiki ui-tooltip-light ui-tooltip-shadow'
		}
	})
	.click(function(event) { event.preventDefault(); });
});

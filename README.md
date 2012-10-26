SpreeAjaxCart
===================

Add link_to_ajax_cart helper for Spree


Basic Installation
------------------

1. Add the following to your Gemfile
<pre>
  gem 'spree_ajax_cart', '~> 1.2.0'
</pre>
2. Run `bundle install`
3. To copy and apply migrations run:
<pre>
	rails g spree_ajax_cart:install
</pre>

Example
=======

1. add new link to cart nav menu:
<pre>
	<%= link_to_ajax_cart("Custom Text") %>
</pre>

Copyright (c) 2012 [Damiano Giacomello], released under the New BSD License

OrdersHelper.module_eval do
  
  def cart_item_count
    return "" if current_page?(cart_path)
    if current_order.nil? or current_order.line_items.empty?
      text = "0"
    else
      text = "#{current_order.item_count}"
    end
    return content_tag(:div, text, :class => "quantity")
  end
  
  def link_to_ajax_cart(text = t('cart'))
    return "" if current_page?(cart_path)
    css_class = nil
    if current_order.nil? or current_order.line_items.empty?
      css_class = 'empty ajax-cart'
    else
      css_class = 'full ajax-cart'
    end
    text = cart_item_count + content_tag(:div, t("count_article"), :class => "min-ajax_cart") + content_tag(:div, text, :class => "max-ajax_cart")
    link_to text, ajax_cart_path(), :remote => true, :rel => "#{ajax_cart_path()}", :class => css_class
  end

end
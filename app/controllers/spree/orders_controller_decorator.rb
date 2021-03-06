Spree::OrdersController.class_eval do
  respond_to :js, :only => [:populate, :edit, :update]
  respond_override :populate => { :js => { :success => lambda { render "populate" ,:object => @order } } }

  def ajax_cart
    render :partial => 'spree/orders/ajax_cart'
  end

end
Rails.application.routes.draw do
  match '/ajax_cart', :to => 'orders#ajax_cart', :via => :get, :as => :ajax_cart
end

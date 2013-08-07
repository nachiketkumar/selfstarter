Selfstarter::Application.routes.draw do
  root :to => 'preorder#index'
  match '/preorder'               => 'preorder#index', :via => :get # Added due to error during rake db:schema:load. You should not use the `match` method in your router without specifying an HTTP method.
  get 'preorder/checkout'
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill', :via => :get # Added ^
  match '/preorder/postfill'      => 'preorder#postfill', :via => :get # Added ^
end

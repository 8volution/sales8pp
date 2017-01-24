Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
   #  devise_scope :user do      
  	# 	get "/login", :to => "spree/user_sessions#new"
  	# end

  	devise_scope :spree_user do
  		root 'spree/user_registrations#new'
	end

end
#spree/user_sessions#create

#spree/user_sessions#new



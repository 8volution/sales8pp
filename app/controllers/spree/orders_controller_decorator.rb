Spree::OrdersController.class_eval do	
	before_filter :authenticate_spree_user!
end

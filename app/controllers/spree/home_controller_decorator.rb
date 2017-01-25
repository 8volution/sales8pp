Spree::HomeController.class_eval do
	before_filter :redirect_login

	def redirect_login
	 	unless spree_current_user 
			redirect_to "/login"
		end
	end	

end

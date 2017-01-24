Spree::HomeController.class_eval do
	before_filter :redirect_home

	def redirect_home
		redirect_to "/login"
	end	

end

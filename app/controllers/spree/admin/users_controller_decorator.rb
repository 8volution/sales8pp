module Spree
	module Admin
		UsersController.class_eval  do
  			before_filter :add_sales_rep, :only => [:new, :create, :edit, :update]

		def add_sales_rep
			Spree::PermittedAttributes.user_attributes << :sales_rep_name
		end

		def model_class
			Spree::user_class
		end

	end
end
end
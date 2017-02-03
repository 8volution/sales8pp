class AddSalesrepToUsers < ActiveRecord::Migration[5.0]
  def change
  	    add_column :spree_users, :sales_rep_name, :string
  end
end

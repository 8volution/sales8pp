class RemoveSpreerepFromUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :spree_users, :sales_rep
  end
end

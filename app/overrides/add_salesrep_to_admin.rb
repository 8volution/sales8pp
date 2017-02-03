Deface::Override.new(virtual_path: 'spree/admin/users/_form',
  name: 'add_sale_rep_to_user_admin_form',
  insert_after: "[data-hook='admin_user_form_roles']",
  text: " 
    <%= f.field_container :sales_rep_name, class: ['form-group'] do %>
      <%= f.label :sales_rep_name, Spree.t(:sales_rep_name) %>
      <%= f.collection_select(:sales_rep_name,  Spree::User.where(id: Spree::RoleUser.where(role_id:3).pluck(:user_id)), :email, :email, prompt: true, value: @user.sales_rep_name)%>
      <%= f.error_message_on :sale_price %>
    <% end %> ")






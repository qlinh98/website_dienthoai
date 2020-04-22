ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :pro_name, :quantity, :price_input, :price_output, :description, :img_1, :img_2, :img_3, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:pro_name, :quantity, :price_input, :price_output, :description, :img_1, :img_2, :img_3]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # resourcify


end

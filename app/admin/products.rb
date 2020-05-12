ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  # Uncomment all parameters which should be permitted for assignment
  #
  #scope :all, :default => true

  # Ex:- scope :active, -> {where(:active => true)}
  # Ex:- scope :active, -> {where(:active => true)}

  permit_params :pro_name, :quantity, :price_input, :price_input, :img_1, :img_2, :img_3, :category_pro_id
  #

  

  
  # or
  #
  # permit_params do
  #   permitted = [:pro_name, :quantity, :price_input, :price_output, :img_1, :img_2, :img_3, :category_pro_id]
  #   permitted << :other if params[:action] == "create" && current_admin_user.admin?
  #   permitted
  # end
end

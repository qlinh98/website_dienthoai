ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
<<<<<<< HEAD
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


=======
  # permit_params :pro_name, :quantily, :price_input, :price_out, :img_1, :img_2, :img_3, :category_pro_id
  #
  # or
  #
  permit_params do
    permitted = [:pro_name, :quantily, :price_input, :price_out, :img_1, :img_2, :img_3, :category_pro_id]
    permitted << :other if params[:action] == 'create' #&& current_user.admin?
    permitted
  end
  
>>>>>>> ca9b2549ebec144f0728bc8abeda042eb32d4a5a
end

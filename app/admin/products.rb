ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :pro_name, :quantily, :price_input, :price_out, :img_1, :img_2, :img_3, :category_pro_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:pro_name, :quantily, :price_input, :price_out, :img_1, :img_2, :img_3, :category_pro_id]
  #   permitted << :other if params[:action] == "create" #&& current_user.admin?
  #   permitted
  # end
    # form do |f|
    #   f.inputs do
    #     f.input :category_pro_id, :as => :select, :collection => CategoryPro.all.collect {|category_pros| [category_pros.category_name, category_pros.id] }
    #     f.input :pro_name
    #     f.input :quantily
    #     f.input :price_input
    #     f.input :price_out
    #     f.input :img_1, required: true, as: :file
    #     f.input :img_2, required: true, as: :file
    #     f.input :img_3, required: true, as: :file
    #   end
    #   f.actions
    # end
    
end

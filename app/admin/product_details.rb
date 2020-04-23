ActiveAdmin.register ProductDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :screen, :operating_sytem, :rear_camera, :front_camera, :network_connection, :cpu, :ram, :intemal_memory, :memory_stick, :sim, :battery_capacity, :hard_drive, :graphic_card, :connector, :design, :size, :release_time, :product_id
  #
  # or
  #
  permit_params do
    permitted = [:screen, :operating_sytem, :rear_camera, :front_camera, :network_connection, :cpu, :ram, :intemal_memory, :memory_stick, :sim, :battery_capacity, :hard_drive, :graphic_card, :connector, :design, :size, :release_time, :product_id]
    permitted << :other if params[:action] == 'create' && current_admin_user.admin?
    permitted
  end
  
end

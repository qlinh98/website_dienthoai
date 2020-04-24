class ProductDetailsController < InheritedResources::Base

  private

    def product_detail_params
      params.require(:product_detail).permit(:screen, :operating_system, :rear_camera, :front_camera, :network_connection, :cpu, :ram, :internal_memory, :memory_stick, :sim, :battery_capacity, :hard_drive, :graphic_card, :connector, :design, :size, :release_time, :product_id)
    end

end

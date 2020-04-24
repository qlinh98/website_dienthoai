json.extract! product_detail, :id, :screen, :operating_system, :rear_camera, :front_camera, :network_connection, :cpu, :ram, :internal_memory, :memory_stick, :sim, :battery_capacity, :hard_drive, :graphic_card, :connector, :design, :size, :release_time, :product_id, :created_at, :updated_at
json.url product_detail_url(product_detail, format: :json)

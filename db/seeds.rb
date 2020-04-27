# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password", permission: 1) if Rails.env.development?

# Product.create!(pro_name: '', quantity: , price_input: , price_output: , image_1: '', img_2: '', img_3: '', category_pro_id: 1 )
# Product.create!(pro_name: '', quantity: , price_input: , price_output: , image_1: '', img_2: '', img_3: '', category_pro_id: 1 )
# Product.create!(pro_name: '', quantity: , price_input: , price_output: , image_1: '', img_2: '', img_3: '', category_pro_id: 1 )

# product_list = [
#   ["Germany", 81831000],
#   ["France", 65447374],
#   ["Belgium", 10839905],
#   ["Netherlands", 16680000],
# ]

# product_list.each do |pro_name, quantity, price_input, price_output, image_1, img_2, img_3, category_pro_id|
#   Product.create(pro_name: pro_name, quantity: quantity, price_input: price_input, price_output: price_output, image_1: img_1, img_2: img_2, img_3: img_3, category_pro_id: category_pro_id)
# end

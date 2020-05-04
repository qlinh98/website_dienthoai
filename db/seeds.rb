# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# if Rails.env.development?
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password", permission: 1) 
AdminUser.create!(email: "linh@gmail.com", password: "123456", password_confirmation: "123456", permission: 0)
AdminUser.create!(email: "quocbao759@gmail.com", password: "quocbao759", password_confirmation: "quocbao759", permission: 0)

CategoryPro.create!(category_name: "Smartphone")
CategoryPro.create!(category_name: "Laptop")
CategoryPro.create!(category_name: "Tablet")

# Product.create!(pro_name: "Iphone 11", quantity: 12, price_input: 1000, price_output: 1100, img_1: "iphone.jpg", img_2: "/uploads/product/img_2/1/iphone.jpg", img_3: "/uploads/product/img_3/1/iphone.jpg", category_pro_id: 1)
# Product.create!(pro_name: 'Laptop dell', quantity: 15, price_input: 700, price_output: 712, img_1: '../app/assets/images/iphone.jpg', img_2: '/uploads/product/img_1/1/iphone-11-pro-max-512gb-gold-600x600.jpg', img_3: "../public/uploads/product/img_1/1/iphone.jpg", category_pro_id: 2 )
# Product.create!(pro_name: '', quantity: , price_input: , price_output: , image_1: '', img_2: '', img_3: '', category_pro_id: 1 )

Product.create!(pro_name: 'Iphone 11 Pro Black', quantity: 10, price_input: 500, price_output: 600, img_1: 'iphone-11-pro-256gb-black-400x400.jpg', img_2: 'iphone-11-pro-256gb-black-400x400.jpg', img_3: 'iphone-11-pro-256gb-black-400x400.jpg', category_pro_id: 1)
Product.create!(pro_name: 'Iphone 11 Pro Max ', quantity: 10, price_input: 600, price_output: 700, img_1: 'iphone-11-pro-max-256gb-black-400x400.jpg', img_2: 'iphone-11-pro-max-256gb-black-400x400.jpg', img_3: 'iphone-11-pro-max-256gb-black-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Iphone 11 Pro Max Gold', quantity: 10, price_input: 800, price_output: 900, img_1: 'iphone-11-pro-max-512gb-gold-400x400.jpg', img_2: 'iphone-11-pro-max-512gb-gold-400x400.jpg', img_3: 'iphone-11-pro-max-512gb-gold-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Iphone 11 Red', quantity: 10, price_input: 650, price_output: 700, img_1: 'iphone-11-red-400x400.jpg', img_2: 'iphone-11-red-400x400.jpg', img_3: 'iphone-11-red-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Oppo A9', quantity: 10, price_input: 300, price_output: 350, img_1: 'oppo-a9-600x600-trang-400x400.jpg', img_2: 'oppo-a9-600x600-trang-400x400.jpg', img_3: 'oppo-a9-600x600-trang-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Realme 6i', quantity: 10, price_input: 250, price_output: 300, img_1: 'realme-6i-trang-600-200x200.jpg', img_2: 'realme-6i-trang-600-200x200.jpg', img_3: 'realme-6i-trang-600-200x200.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'SamSung A31', quantity: 10, price_input: 660, price_output: 700, img_1: 'samsung-galaxy-a31-600x600-1-400x400.jpg', img_2: 'samsung-galaxy-a31-600x600-1-400x400.jpg', img_3: 'samsung-galaxy-a31-600x600-1-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'SamSung Galaxy Fold', quantity: 10, price_input: 1600, price_output: 1650, img_1: 'samsung-galaxy-fold-black-400x400.jpg', img_2: 'samsung-galaxy-fold-black-400x400.jpg', img_3: 'samsung-galaxy-fold-black-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'SamSung Galaxy Z', quantity: 10, price_input: 1000, price_output: 1100, img_1: 'samsung-galaxy-z-flip-den-600x600-400x400.jpg', img_2: 'samsung-galaxy-z-flip-den-600x600-400x400.jpg', img_3: 'samsung-galaxy-z-flip-den-600x600-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Vsmart Joy3', quantity: 10, price_input: 400, price_output: 500, img_1: 'vsmart-joy-3-tim-600x600-400x400.jpg', img_2: 'vsmart-joy-3-tim-600x600-400x400.jpg', img_3: 'vsmart-joy-3-tim-600x600-400x400.jpg', category_pro_id: 1 )
Product.create!(pro_name: 'Acer Aspire a315', quantity: 10, price_input: 800, price_output: 900, img_1: 'acer-aspire-a315-34-c2h9-n4000-4gb-256gb-win10-nx9-1-400x400.jpg', img_2: 'acer-aspire-a315-34-c2h9-n4000-4gb-256gb-win10-nx9-1-400x400.jpg', img_3: 'acer-aspire-a315-34-c2h9-n4000-4gb-256gb-win10-nx9-1-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Apple MacBook Air', quantity: 10, price_input: 1200, price_output: 1600, img_1: 'apple-macbook-air-mqd32sa-a-i5-5350u-400x400.jpg', img_2: 'apple-macbook-air-mqd32sa-a-i5-5350u-400x400.jpg', img_3: 'apple-macbook-air-mqd32sa-a-i5-5350u-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Asus Vivobook A412FA', quantity: 10, price_input: 800, price_output: 900, img_1: 'asus-vivobook-a412fa-i5-ek738t-400x400.jpg', img_2: 'asus-vivobook-a412fa-i5-ek738t-400x400.jpg', img_3: 'asus-vivobook-a412fa-i5-ek738t-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Asus Vivobook X509FA', quantity: 10, price_input: 800, price_output: 900, img_1: 'asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-400x400.jpg', img_2: 'asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-400x400.jpg', img_3: 'asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Asus Vivobook X509F', quantity: 10, price_input: 900, price_output: 1000, img_1: 'asus-vivobook-x509f-i7-8565u-8gb-mx230-win10-ej13-5-2-1-2-1-400x400.jpg', img_2: 'asus-vivobook-x509f-i7-8565u-8gb-mx230-win10-ej13-5-2-1-2-1-400x400.jpg', img_3: 'asus-vivobook-x509f-i7-8565u-8gb-mx230-win10-ej13-5-2-1-2-1-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Asus X409JA', quantity: 10, price_input: 400, price_output: 600, img_1: 'asus-x409ja-i3-ek015t-220526-1-400x400.jpg', img_2: 'asus-x409ja-i3-ek015t-220526-1-400x400.jpg', img_3: 'asus-x409ja-i3-ek015t-220526-1-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'HP Pavillion 15', quantity: 10, price_input: 800, price_output: 900, img_1: 'hp-pavilion-15-cs3014tu-i5-8qp20pa-400x400.jpg', img_2: 'hp-pavilion-15-cs3014tu-i5-8qp20pa-400x400.jpg', img_3: 'hp-pavilion-15-cs3014tu-i5-8qp20pa-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Lenovo Ideapad', quantity: 10, price_input: 800, price_output: 900, img_1: 'lenovo-ideapad-s145-15iil-i3-1005g1-4gb-256gb-win1-18-400x400.jpg', img_2: 'lenovo-ideapad-s145-15iil-i3-1005g1-4gb-256gb-win1-18-400x400.jpg', img_3: 'lenovo-ideapad-s145-15iil-i3-1005g1-4gb-256gb-win1-18-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Lenovo Ideapad S145', quantity: 10, price_input: 500, price_output: 600, img_1: 'lenovo-ideapad-s145-15iil-i5-1035g1-8gb-512gb-win1-400x400.jpg', img_2: 'lenovo-ideapad-s145-15iil-i5-1035g1-8gb-512gb-win1-400x400.jpg', img_3: 'lenovo-ideapad-s145-15iil-i5-1035g1-8gb-512gb-win1-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Lenovo Ideapad S340', quantity: 10, price_input: 900, price_output: 1000, img_1: 'lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-18-400x400.jpg', img_2: 'lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-18-400x400.jpg', img_3: 'lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-18-400x400.jpg', category_pro_id: 2 )
Product.create!(pro_name: 'Huawei Mediapad M5', quantity: 10, price_input: 800, price_output: 900, img_1: 'huawei-mediapad-m5-lite-gray-400x400.jpg', img_2: 'huawei-mediapad-m5-lite-gray-400x400.jpg', img_3: 'huawei-mediapad-m5-lite-gray-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Huawei Mediapad T3', quantity: 10, price_input: 800, price_output: 900, img_1: 'huawei-mediapad-t3-7-2018-33397-thumbmau-vang-400x400.png', img_2: 'huawei-mediapad-t3-7-2018-33397-thumbmau-vang-400x400.png', img_3: 'huawei-mediapad-t3-7-2018-33397-thumbmau-vang-400x400.png', category_pro_id: 3 )
Product.create!(pro_name: 'Huawui Mediapad T3-10', quantity: 10, price_input: 800, price_output: 900, img_1: 'huawei-mediapad-t3-10-1-33397-thumb-400x400.jpg', img_2: 'huawei-mediapad-t3-10-1-33397-thumb-400x400.jpg', img_3: 'huawei-mediapad-t3-10-1-33397-thumb-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Huawei Mediapad T5', quantity: 10, price_input: 800, price_output: 900, img_1: 'huawei-mediapad-t5-16gb-600x600-2-400x400.jpg', img_2: 'huawei-mediapad-t5-16gb-600x600-2-400x400.jpg', img_3: 'huawei-mediapad-t5-16gb-600x600-2-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Huawei Mediapad T5 33', quantity: 10, price_input: 800, price_output: 900, img_1: 'huawei-mediapad-t5-33397-thumb123-400x400.jpg', img_2: 'huawei-mediapad-t5-33397-thumb123-400x400.jpg', img_3: 'huawei-mediapad-t5-33397-thumb123-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Ipad Air 105', quantity: 10, price_input: 800, price_output: 900, img_1: 'ipad-air-105-inch-wifi-2019-gold-400x400.jpg', img_2: 'ipad-air-105-inch-wifi-2019-gold-400x400.jpg', img_3: 'ipad-air-105-inch-wifi-2019-gold-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Ipad Mini 79', quantity: 10, price_input: 800, price_output: 900, img_1: 'ipad-mini-79-inch-wifi-2019-gold-400x400.jpg', img_2: 'ipad-mini-79-inch-wifi-2019-gold-400x400.jpg', img_3: 'ipad-mini-79-inch-wifi-2019-gold-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Ipad Min 80', quantity: 10, price_input: 800, price_output: 900, img_1: 'ipad-mini-79-inch-wifi-cellular-64gb-2019-gold-400x400.jpg', img_2: 'ipad-mini-79-inch-wifi-cellular-64gb-2019-gold-400x400.jpg', img_3: 'ipad-mini-79-inch-wifi-cellular-64gb-2019-gold-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Masstel Tab10 pro', quantity: 10, price_input: 800, price_output: 900, img_1: 'masstel-tab10-pro-gold-2-400x400.jpg', img_2: 'masstel-tab10-pro-gold-2-400x400.jpg', img_3: 'masstel-tab10-pro-gold-2-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'Mobell Tab 10', quantity: 10, price_input: 800, price_output: 900, img_1: 'mobell-tab-10-33397-1-thumb1-400x400.jpg', img_2: 'mobell-tab-10-33397-1-thumb1-400x400.jpg', img_3: 'mobell-tab-10-33397-1-thumb1-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'SamSung Galaxy Tab A8', quantity: 10, price_input: 800, price_output: 900, img_1: 'samsung-galaxy-tab-a8-plus-p205-black-400x400.jpg', img_2: 'samsung-galaxy-tab-a8-plus-p205-black-400x400.jpg', img_3: 'samsung-galaxy-tab-a8-plus-p205-black-400x400.jpg', category_pro_id: 3 )
Product.create!(pro_name: 'SamSung Galaxy Tab A8 T295', quantity: 10, price_input: 800, price_output: 900, img_1: 'samsung-galaxy-tab-a8-t295-2019-silver-400x400.jpg', img_2: 'samsung-galaxy-tab-a8-t295-2019-silver-400x400.jpg', img_3: 'samsung-galaxy-tab-a8-t295-2019-silver-400x400.jpg', category_pro_id: 3 )

# product_list = [
#   ["Germany", 81831000],
#   ["France", 65447374],
#   ["Belgium", 10839905],
#   ["Netherlands", 16680000],
# ]

# product_list.each do |pro_name, quantity, price_input, price_output, image_1, img_2, img_3, category_pro_id|
#   Product.create(pro_name: pro_name, quantity: quantity, price_input: price_input, price_output: price_output, image_1: img_1, img_2: img_2, img_3: img_3, category_pro_id: category_pro_# end

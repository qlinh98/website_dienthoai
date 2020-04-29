
[1mFrom:[0m /home/local/ELARION/lamnn/LamNN/app_DT/website_dienthoai/app/controllers/products_controller.rb:20 ProductsController#show:

     [1;34m3[0m: [32mdef[0m [1;34mshow[0m
     [1;34m4[0m:   [32mif[0m valid_page?
     [1;34m5[0m:     @products = [1;34;4mProduct[0m.all
     [1;34m6[0m:     @categorys = [1;34;4mCategoryPro[0m.all
     [1;34m7[0m:     @category = []
     [1;34m8[0m:     @product = []
     [1;34m9[0m:     @all = []
    [1;34m10[0m:     @categorys.each [32mdo[0m |category|
    [1;34m11[0m:       @products.each [32mdo[0m |product|
    [1;34m12[0m:         [32mif[0m product.category_pro_id == category.id
    [1;34m13[0m:           @all << product
    [1;34m14[0m:         [32mend[0m
    [1;34m15[0m:       [32mend[0m
    [1;34m16[0m:     [32mend[0m
    [1;34m17[0m:     [1;34m#navcategory product all show[0m
    [1;34m18[0m:     navcategory_product(@categorys)
    [1;34m19[0m:     
 => [1;34m20[0m:     binding.pry
    [1;34m21[0m:     
    [1;34m22[0m:     [1;34m#search product[0m
    [1;34m23[0m:     @search = params[[31m[1;31m"[0m[31msearch[1;31m"[0m[31m[0m]
    [1;34m24[0m:     [32mif[0m @search.present?
    [1;34m25[0m:       @name = @search
    [1;34m26[0m:       @products = [1;34;4mProduct[0m.where([31m[1;31m"[0m[31mpro_name Like ?[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31m%#{@name}[0m[31m%[1;31m"[0m[31m[0m)
    [1;34m27[0m:     [32mend[0m
    [1;34m28[0m:     render [35mtemplate[0m: [31m[1;31m"[0m[31mproducts/#{params[:page]}[0m[31m[1;31m"[0m[31m[0m
    [1;34m29[0m: 
    [1;34m30[0m:   [32mend[0m
    [1;34m31[0m: [32mend[0m


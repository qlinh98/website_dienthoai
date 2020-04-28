class CategoryProsController < InheritedResources::Base
  def show
    @cate = []
    @catelorys = CategoryPro.all
    @catelorys.each do |category|
      @cate << category
    end
  end

  private

  def category_pro_params
    params.require(:category_pro).permit(:category_name)
  end
end

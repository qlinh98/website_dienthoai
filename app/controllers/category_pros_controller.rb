class CategoryProsController < InheritedResources::Base
  def show
  end

  private

  def category_pro_params
    params.require(:category_pro).permit(:category_name)
  end
end

class CategoryProsController < InheritedResources::Base

  
  private

  def category_pro_params
    params.require(:category_pro).permit(:category_name)
  end
end

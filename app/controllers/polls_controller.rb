class PollsController < InheritedResources::Base
  def create
    @product = Product.find(params[:product_id])
    @poll = @product.poll.create(poll_params)
    redirect_to product_path(@product)
  end

  private

  def poll_params
    params.require(:poll).permit(:comment, :vote_count, :user_id)
  end
end

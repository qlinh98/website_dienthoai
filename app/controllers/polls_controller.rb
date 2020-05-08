class PollsController < InheritedResources::Base
  def create
    @poll = Poll.new(poll_params)
    respond_to do |format|
      if @poll.save
        format.html { redirect_to @poll, notice: "Cart was successfully created." }
        format.json { render :show, status: :created, location: @poll }
      else
        format.html { render :new }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:comment, :vote_count, :product_id, :user_id)
  end
end

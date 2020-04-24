class PollsController < InheritedResources::Base

  private

    def poll_params
      params.require(:poll).permit(:comment, :vote_count, :product_id, :user_id)
    end

end

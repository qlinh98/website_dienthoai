module ApplicationHelper
  def has_role?(role)
    current_user && current_user.has_role?(role)
  end

  def sum_vote(id)
    poll = Product.includes(:poll).find(id)
    @n1 = 0
    @dem1 = 0
    poll.poll.each do |poll|
      @n1 += poll.vote_count
      @dem1 += 1
    end
  end
end

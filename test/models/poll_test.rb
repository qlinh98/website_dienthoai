require "test_helper"

class PollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Thuoc tinh khong de trong" do
    poll = Poll.new()
    assert poll.invalid?
    assert poll.errors[:comment].any?
    assert poll.errors[:vote_count].any?
  end
end

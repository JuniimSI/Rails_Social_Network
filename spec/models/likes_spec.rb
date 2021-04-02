require 'rails_helper'

RSpec.describe Like, type: :model do
  it "user likes a post" do
    jr = FactoryBot.create(:user)
    sol = FactoryBot.create(:user)
    pe = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: jr)

    Like.create(user: sol, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql sol

    Like.create(user: pe, post: post)
    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql pe

    Like.find_by(post: post, user: sol).destroy
    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql pe

  end



end

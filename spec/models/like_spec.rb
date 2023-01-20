require 'rails_helper'

RSpec.describe Like, type: :model do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  post = Post.create(author: user, title: 'Hello', text: 'This is my first post')
  Like.create(post:, author: user)
  second_like = Like.create(post:, author: user)

  it 'should update the likes_counter of the post' do
    expect(post.likes_counter).to eq(2)
    second_like.destroy
    expect(post.likes_counter).to eq(1)
  end
end

require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  post = Post.create(author: user, title: 'Hello', text: 'This is my first post')
  Comment.create(post:, author: user, text: 'Hi to myself!')
  second_comment = Comment.create(post:, author: user, text: 'Hello to myself!')

  it 'should update the comments_counter of the post' do
    expect(post.comments_counter).to eq(2)
    second_comment.destroy
    expect(post.comments_counter).to eq(1)
  end
end

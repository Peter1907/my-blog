require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  post = Post.new(author: user, title: 'Hello', text: 'This is my first post')
  before { post.save }
  
  it 'should have a title' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'should have a title that does not exceed 250 characters' do
    post.title = 'a' * 251
    expect(post).to_not be_valid
  end

  it 'should have a comments_counter of 0 or more' do
    post.comments_counter = -1
    expect(post).to_not be_valid
  end

  it 'should have a likes_counter of 0 or more' do
    post.likes_counter = -1
    expect(post).to_not be_valid
  end
end

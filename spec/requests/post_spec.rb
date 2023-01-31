require 'rails_helper'

RSpec.describe User, type: :request do
  describe 'Index action' do
    before(:each) do
      @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
      get user_posts_path(@user)
    end

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template('index')
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('Number of posts: 0')
    end
  end

  describe 'Show action' do
    before(:each) do
      @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
      @post = Post.create(author: @user, title: 'Hello', text: 'This is my first post')
      get user_post_path(@user, @post)
    end

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template(:show)
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('This is my first post')
    end
  end
end

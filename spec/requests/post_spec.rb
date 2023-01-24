require 'rails_helper'

RSpec.describe User, type: :request do
  describe 'Index action' do
    before(:each) { get user_posts_path(1) }

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template('index')
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('list of all the posts for a specific user')
    end
  end

  describe 'Show action' do
    before(:each) { get user_post_path(1, 1) }

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template('show')
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('details about a specific post of a certain user')
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :request do
  describe 'Index action' do
    before(:each) { get users_path }

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template('index')
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('list for all the users')
    end
  end

  describe 'Show action' do
    before(:each) { get user_path(1) }

    it 'has the correct response status' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template('show')
    end

    it 'renders the view with the correct placeholder text' do
      expect(response.body).to include('more details about a specific user')
    end
  end
end

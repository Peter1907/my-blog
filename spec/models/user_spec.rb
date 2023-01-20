require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  before { user.save }

  it 'should have a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'should have a posts_counter of 0 or more' do
    user.posts_counter = -1
    expect(user).to_not be_valid
  end
end

class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post

  after_create :update_like_counter
  after_destroy :update_like_counter

  private
  def update_like_counter
    self.post.likes_counter = self.post.likes.count
  end
end

class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post

  after_create :update_comment_counter
  after_destroy :update_comment_counter

  private
  def update_comment_counter
    self.post.comments_counter = self.post.comments.count
  end
end

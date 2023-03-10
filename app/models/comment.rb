class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post

  validates :text, presence: true, length: { in: 5..1000 }

  after_create :update_comment_counter
  after_destroy :update_comment_counter

  scope :last_5_comments, -> { order(created_at: :desc).limit(5) }

  private

  def update_comment_counter
    post.increment! :comments_counter if persisted?
    post.decrement! :comments_counter unless persisted?
  end
end

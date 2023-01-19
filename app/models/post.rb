class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments
  has_many :likes

  scope :last_5, -> { order(created_at: :desc).limit(5) }

  after_create :update_post_counter
  after_destroy :update_post_counter

  private

  def update_post_counter
    author.posts_counter = author.posts.count
  end
end

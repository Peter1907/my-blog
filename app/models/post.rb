class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments
  has_many :likes

  scope :last_3_posts, -> { order(created_at: :desc).limit(3) }

  after_create :update_post_counter
  after_destroy :update_post_counter

  def last_5_comments
    comments.last_5_comments
  end

  private

  def update_post_counter
    author.increment! :posts_counter if persisted?
    author.decrement! :posts_counter unless persisted?
  end
end
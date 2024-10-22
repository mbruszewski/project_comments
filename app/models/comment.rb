class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :author, presence: true
  validates :body, presence: true
end

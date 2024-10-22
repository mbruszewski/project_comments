class Project < ApplicationRecord
  include Commentable

  validates :author, presence: true
  validates :name, presence: true
end

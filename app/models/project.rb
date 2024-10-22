class Project < ApplicationRecord
  validates :author, presence: true
  validates :name, presence: true
end

class Project < ApplicationRecord
  include Commentable

  STATUSES = %w[new pending cancelled finished].freeze

  validates :author, presence: true
  validates :name, presence: true
  validates :status, inclusion: { in: STATUSES }
end

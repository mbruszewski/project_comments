# This file will generate some random data for the database. This is useful for testing purposes.

require 'factory_bot_rails'
require 'faker'

25.times do
  project = FactoryBot.create(:project)

  5.times { FactoryBot.create(:comment, commentable: project) }
end

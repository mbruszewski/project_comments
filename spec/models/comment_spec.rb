require 'rails_helper'

RSpec.describe Comment do
  describe "validations" do
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:body) }
  end
end

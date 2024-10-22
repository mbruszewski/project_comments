require 'rails_helper'

RSpec.describe Project do
  describe "validations" do
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:name) }
  end
end

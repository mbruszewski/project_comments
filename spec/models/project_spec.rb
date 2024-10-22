require 'rails_helper'

RSpec.describe Project do
  describe "validations" do
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:name) }
    it { should validate_inclusion_of(:status).in_array(%w[new pending cancelled finished]) }
  end
end

require 'rails_helper'

RSpec.describe "Commentable" do
  # Use migrations within tests to create fake tables if needed
  before(:all) do
    ActiveRecord::Schema.define do
      create_table :fake_models, force: true do |t|
        t.string :name
        t.timestamps
      end
    end
  end

  describe "with commentable" do
    class ObjectWithCommentable < ApplicationRecord
      self.table_name = 'fake_models'

      include Commentable
    end

    let(:object) { ObjectWithCommentable.new }

    it "has many comments" do
      expect(object).to have_many(:comments).dependent(:destroy)
    end
  end

  describe "without commentable" do
    class ObjectWithoutCommentable < ApplicationRecord
      self.table_name = 'fake_models'
    end

    let(:object) { ObjectWithoutCommentable.new }

    it "does not have many comments" do
      expect(object).not_to have_many(:comments).dependent(:destroy)
    end
  end
end

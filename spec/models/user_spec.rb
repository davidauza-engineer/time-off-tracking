require "rails_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should belong_to(:department).optional }
    it { should belong_to(:manager).optional }
    it { should have_many(:direct_reports).class_name("User").with_foreign_key("manager_id") }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:email)}
  end
end

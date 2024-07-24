require "rails_helper"

RSpec.describe InterviewQuestion, type: :model do
  describe "validations" do
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:topic) }
    it { should validate_presence_of(:link) }
  end
end
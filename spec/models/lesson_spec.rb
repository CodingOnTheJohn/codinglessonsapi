require "rails_helper"

RSpec.describe Lesson, type: :model do
  describe "validations" do
    it { should validate_presence_of(:lesson) }
    it { should validate_presence_of(:topic) }
    it { should validate_presence_of(:link) }
    it { should validate_presence_of(:lesson_type) }
  end
end
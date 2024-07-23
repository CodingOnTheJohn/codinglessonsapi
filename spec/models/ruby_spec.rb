require "rails_helper"

RSpec.describe RubyLesson, type: :model do
  describe "validations" do
    it { should validate_presence_of(:lesson) }
    it { should validate_presence_of(:topic) }
    it { should validate_presence_of(:link) }
  end
end
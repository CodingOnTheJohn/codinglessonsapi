require "rails_helper"

RSpec.describe "Ruby API", type: :request do
  describe "GET /api/v1/ruby" do
    it "returns a list of Ruby lessons" do
      lesson_1 = RubyLesson.create(:ruby_lesson)
      lesson_2 = RubyLesson.create(:ruby_lesson)
      lesson_3 = RubyLesson.create(:ruby_lesson)

      lessons = [lesson_1, lesson_2, lesson_3]

      get "/api/v1/ruby"

      expect(response).to be_successful

      lessons = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(lessons.count).to eq(3)

      expect(lessons[:attributes]).to have_key(:lesson)
      expect(lessons[:attributes][:lesson]).to be_a(String)

      expect(lessons[:attributes]).to have_key(:topic)
      expect(lessons[:attributes][:topic]).to be_a(String)

      expect(lessons[:attributes]).to have_key(:link)
      expect(lessons[:attributes][:link]).to be_a(String)
    end
  end

  describe "GET /api/v1/ruby/:id" do
    it "returns a single Ruby lesson" do
      lesson_1 = RubyLesson.create(:ruby_lesson)

      get "/api/v1/ruby/#{lesson_1.id}"

      expect(response).to be_successful
      lesson = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(lesson[:attributes]).to have_key(:lesson)
      expect(lesson[:attributes][:lesson]).to be_a(String)

      expect(lesson[:attributes]).to have_key(:topic)
      expect(lesson[:attributes][:topic]).to be_a(String)

      expect(lesson[:attributes]).to have_key(:link)
      expect(lesson[:attributes][:link]).to be_a(String)

      expect(lesson[:attributes][:lesson]).to eq(lesson_1.lesson)
      expect(lesson[:attributes][:topic]).to eq(lesson_1.topic)
      expect(lesson[:attributes][:link]).to eq(lesson_1.link)
    end
  end
end
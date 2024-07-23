require "rails_helper"

RSpec.describe "Ruby API" do
  describe "GET /api/v1/ruby" do
    it "returns a list of Ruby lessons" do
      lesson_1 = create(:ruby_lesson)
      lesson_2 = create(:ruby_lesson)
      lesson_3 = create(:ruby_lesson)

      lessons = [lesson_1, lesson_2, lesson_3]

      get "/api/v1/ruby"

      lessons = JSON.parse(response.body, symbolize_names: true)[:data]
      expect(response).to be_successful

      expect(lessons.count).to eq(3)

      lessons.each do |lesson|
        expect(lesson[:attributes]).to have_key(:lesson)
        expect(lesson[:attributes][:lesson]).to be_a(String)

        expect(lesson[:attributes]).to have_key(:topic)
        expect(lesson[:attributes][:topic]).to be_a(String)

        expect(lesson[:attributes]).to have_key(:link)
        expect(lesson[:attributes][:link]).to be_a(String)
      end
    end
  end

  describe "GET /api/v1/ruby/:id" do
    it "returns a single Ruby lesson" do
      lesson_1 = create(:ruby_lesson)

      get "/api/v1/ruby/#{lesson_1.id}"

      lesson = JSON.parse(response.body, symbolize_names: true)[:data]
      expect(response).to be_successful

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
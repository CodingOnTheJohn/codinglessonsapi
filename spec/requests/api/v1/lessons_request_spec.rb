require "rails_helper"

RSpec.describe "GET /api/v1/lessons with different params" do
  context "when type is ruby" do
    it "returns a list of Ruby lessons" do
      lesson_1 = create(:lesson, lesson_type: :ruby)
      lesson_2 = create(:lesson, lesson_type: :ruby)
      lesson_3 = create(:lesson, lesson_type: :ruby)

      lessons = [lesson_1, lesson_2, lesson_3]

      get "/api/v1/lessons", params: {type: 'ruby'}

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

        expect(lesson[:attributes]).to have_key(:lesson_type)
        expect(lesson[:attributes][:lesson_type]).to be_a(String)
      end
    end
  end

  context "when type is javascript" do
    it "returns a list of JavaScript lessons" do
      lesson_1 = create(:lesson, lesson_type: :javascript)
      lesson_2 = create(:lesson, lesson_type: :javascript)
      lesson_3 = create(:lesson, lesson_type: :javascript)

      lessons = [lesson_1, lesson_2, lesson_3]

      get "/api/v1/lessons", params: {type: 'javascript'}

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

        expect(lesson[:attributes]).to have_key(:lesson_type)
        expect(lesson[:attributes][:lesson_type]).to be_a(String)
      end
    end
  end

  context "when type is interview" do
    it "returns a list of interview lessons" do
      lesson_1 = create(:lesson, lesson_type: :interview)
      lesson_2 = create(:lesson, lesson_type: :interview)
      lesson_3 = create(:lesson, lesson_type: :interview)

      lessons = [lesson_1, lesson_2, lesson_3]

      get "/api/v1/lessons", params: {type: 'interview'}

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

        expect(lesson[:attributes]).to have_key(:lesson_type)
        expect(lesson[:attributes][:lesson_type]).to be_a(String)
      end
    end
  end
end
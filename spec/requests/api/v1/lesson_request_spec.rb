require "rails_helper"

RSpec.describe "GET /api/v1/lesson/id with different params" do

  describe "GET /api/v1/lesson/:id" do
    it "returns a single lesson" do
      lesson_1 = create(:lesson, lesson_type: :ruby)

      get "/api/v1/lessons/#{lesson_1.id}"

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
      expect(lesson[:attributes][:lesson_type]).to eq(lesson_1.lesson_type)
    end

    it "sad path for GET /api/v1/lesson/1000" do
      get "/api/v1/lessons/1000"

      expect(response).to_not be_successful
      expect(response.status).to eq(404)

      data = JSON.parse(response.body, symbolize_names: true)

      expect(data[:errors]).to be_an(Array)
      expect(data[:errors].first).to have_key(:status)
      expect(data[:errors].first).to have_key(:message)
      expect(data[:errors].first[:status]).to eq("404")
      expect(data[:errors].first[:message]).to eq("Couldn't find Lesson with 'id'=1000")
    end
  end
end
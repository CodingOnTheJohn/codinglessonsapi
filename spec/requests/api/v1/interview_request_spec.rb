require "rails_helper"

RSpec.describe "Interview API" do
  describe "GET /api/v1/interview" do
    it "returns a list of Ruby lessons" do
      question_1 = create(:interview_question)
      question_2 = create(:interview_question)
      question_3 = create(:interview_question)

      questions = [question_1, question_2, question_3]

      get "/api/v1/interview"

      questions = JSON.parse(response.body, symbolize_names: true)[:data]
      expect(response).to be_successful

      expect(questions.count).to eq(3)

      questions.each do |question|
        expect(question[:attributes]).to have_key(:question)
        expect(question[:attributes][:question]).to be_a(String)

        expect(question[:attributes]).to have_key(:topic)
        expect(question[:attributes][:topic]).to be_a(String)

        expect(question[:attributes]).to have_key(:link)
        expect(question[:attributes][:link]).to be_a(String)
      end
    end
  end

  describe "GET /api/v1/interview/:id" do
    it "returns a single Ruby lesson" do
      question_1 = create(:interview_question)

      get "/api/v1/interview/#{question_1.id}"

      question = JSON.parse(response.body, symbolize_names: true)[:data]
      expect(response).to be_successful

      expect(question[:attributes]).to have_key(:question)
      expect(question[:attributes][:question]).to be_a(String)

      expect(question[:attributes]).to have_key(:topic)
      expect(question[:attributes][:topic]).to be_a(String)

      expect(question[:attributes]).to have_key(:link)
      expect(question[:attributes][:link]).to be_a(String)

      expect(question[:attributes][:question]).to eq(question_1.question)
      expect(question[:attributes][:topic]).to eq(question_1.topic)
      expect(question[:attributes][:link]).to eq(question_1.link)
    end
  end
end
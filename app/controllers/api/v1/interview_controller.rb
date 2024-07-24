class Api::V1::InterviewController < ApplicationController
  def index
    @interviews = InterviewQuestion.all
    render json: InterviewSerializer.new(@interviews)
  end

  def show
    @interview = InterviewQuestion.find(params[:id])
    render json: InterviewSerializer.new(@interview)
  end
end
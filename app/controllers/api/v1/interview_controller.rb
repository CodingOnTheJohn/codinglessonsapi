class Api::V1::InterviewController < ApplicationController
  def index
    @interviews = Interview.all
    render json: InterviewSerializer.new(@interviews)
  end

  def show
    @interview = Interview.find(params[:id])
    render json: InterviewSerializer.new(@interview)
  end
end
class Api::V1::JavascriptController < ApplicationController
  def index
    @lessons = JavascriptLesson.all
    render json: LessonSerializer.new(@lessons)
  end

  def show
    @lesson = JavascriptLesson.find(params[:id])
    render json: LessonSerializer.new(@lesson)
  end
end
class Api::V1::Controsller < ApplicationController
  def index
    @lessons = Lessons.where(lesson_type: params[:type])
    render json: LessonSerializer.new(@lessons)
  end

  def show
    @lesson = Lessons.find(params[:id])
    render json: LessonSerializer.new(@lesson)
  end
end
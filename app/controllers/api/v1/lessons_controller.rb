class Api::V1::LessonsController < ApplicationController
  def index
    @lessons = Lesson.where(lesson_type: params[:type])
    render json: LessonSerializer.new(@lessons)
  end

  def show
    @lesson = Lesson.find(params[:id])
    render json: LessonSerializer.new(@lesson)
  end
end
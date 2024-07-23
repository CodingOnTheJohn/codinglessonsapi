class RubyController < ApplicationController
  def index
    @lessons = RubyLesson.all
    render json: LessonSerializer.new(@lessons)
  end

  def show
    @lesson = RubyLesson.find(params[:id])
    render json: LessonSerializer.new(@lesson)
  end
end
class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def render_not_found(error)
    render json: ErrorSerializer.new(ErrorMessage.new(error.message, 404)).serialize, status: 404
  end

end

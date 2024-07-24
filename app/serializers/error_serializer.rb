class ErrorSerializer
  def initialize(error)
    @error = error
  end

  def serialize
    { error: { message: @error.message, status: @error.status.to_s } }
  end
end
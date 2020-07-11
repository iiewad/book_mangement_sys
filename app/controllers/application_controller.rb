class ApplicationController < ActionController::API
  rescue_from Exception do |exception|
    logger.error exception.message
    render json: {code: -1, data: nil,  msg:exception.message}, status: 500
  end
end

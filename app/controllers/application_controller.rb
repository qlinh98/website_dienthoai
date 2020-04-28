class ApplicationController < ActionController::Base
  # check_authorization
  protect_from_forgery

  def access_denied(exception)
    redirect_to admin_root_path, alert: exception.message
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: "text/html" }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js { head :forbidden, content_type: "text/html" }
    end
  end

  # rescue_from Exception, with: :render_500
  # # rescue_from UnauthorizedException, with: :render_401
  # rescue_from ActionController::RoutingError, with: :render_404

  # def error
  #   raise env["action_dispatch.exception"]
  # end

  # def render_401
  #   #render custom 401 page

  # end

  # def render_404
  #   #render custom 404 page
  #   # render json: {
  #   #   status: 404,
  #   #   error: :not_found,
  #   #   message: "Not Found.",
  #   # }, status: 404
  #   # p "Loi roi"

  # end

  # def render_500
  #   #render custom 500 page

  # end
end

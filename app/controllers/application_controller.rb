class ApplicationController < ActionController::Base

  protected
 
  # username フィールドを許可する strong parameters の設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end

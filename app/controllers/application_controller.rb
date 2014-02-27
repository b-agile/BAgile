class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_projects

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  include ApplicationHelper

  check_authorization :unless => :devise_controller?
  #ugly fix to handle cancan bug
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end


  private
    def load_projects
      @projects_on_navbar = current_user.projects unless current_user.nil?
    end

end

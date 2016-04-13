class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_action :set_categories
  before_filter :set_author
  before_action :set_site_search

  private
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :avatar) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :avatar) }
    end

	  def set_categories
	    @categories = Category.all.order('id ASC')
	  end

    def set_author
       News.author = current_user
    end

	  def set_site_search
	    @search_in_site = News.ransack(params[:q])
	  end
end

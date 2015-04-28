class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_all_categories_companies,:authenticate_user!
  
  private

  def get_all_categories_companies
  	@categories = Category.all
  	@companies = Company.active
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_body_classes

  def set_body_classes
    @body_classes = []
    @body_classes << params[:controller].split('/')
    @body_classes << params[:action]
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_sponsors

  protected

  def load_sponsors
    @sponsors = Refinery::Sponsors::Sponsor.all
  end

end

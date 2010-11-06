class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_recent_events
  
  private
  
  def find_recent_events
    @events = Event.all
    @tweets = Twitter::timeline("bemaniac", count: 3)
  end
end

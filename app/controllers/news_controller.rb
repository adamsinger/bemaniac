class NewsController < ApplicationController
  include ActionView::Helpers::TextHelper
  caches_action :show, :layout => false, :expires_in => 20.minutes
  
  def show
    page = params[:page] || 1
    @posts  = Post.all(page)
    @tweets = Tweet.all(page)
    @mixes = Mix.all
    # p "TEST"
    @news = (@posts | @tweets | @mixes).sort{|a,b| a.created_at <=> b.created_at}.reverse
  end
end

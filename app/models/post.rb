class Post
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :created_at, :title, :body
  
  def persisted?
    false
  end
  
  def self.all(page = 1)
    @posts ||= Postly::Site.find("bemaniac").posts.all(:page => page).map do |post|
      Post.new :created_at => Time.parse(post.display_date), :title => post.title, :body => post.body_full
    end
  end
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end

class Tweet
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :created_at, :text
  
  def persisted?
    false
  end
  
  def self.all(page = 1)
    @tweets ||= Twitter.user_timeline("bemaniac", :count => 10, :page => page).map do |tweet|
      Tweet.new :created_at => Time.parse(tweet.created_at), :text => tweet.text
    end
  end
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end
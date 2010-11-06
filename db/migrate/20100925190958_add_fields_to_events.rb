class AddFieldsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :country, :string
    add_column :events, :has_timeslot, :boolean
    remove_column :events, :location
    rename_column :events, :title, :name
    rename_column :events, :url, :event_url
  end

  def self.down
    remove_column :events, :has_timeslot
    remove_column :events, :country
    add_column :events, :location, :string
    rename_column :events, :name, :title
    rename_column :events, :event_url, :url
  end
end

class AddVsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :vs, :string
  end

  def self.down
    remove_column :events, :vs
  end
end

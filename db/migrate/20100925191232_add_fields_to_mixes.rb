class AddFieldsToMixes < ActiveRecord::Migration
  def self.up
    add_column :mixes, :date, :date
    add_column :mixes, :vs, :string
    add_column :mixes, :user_id, :integer
  end

  def self.down
    remove_column :mixes, :user_id
    remove_column :mixes, :vs
    remove_column :mixes, :date
  end
end

class CreateMixes < ActiveRecord::Migration
  def self.up
    create_table :mixes do |t|
      t.string :title
      t.string :description
      t.string :tracklist
      t.string :art
      t.string :file
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :mixes
  end
end

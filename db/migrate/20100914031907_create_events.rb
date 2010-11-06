class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :timeslot_from
      t.time :timeslot_to
      t.string :url
      t.string :city
      t.string :state
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

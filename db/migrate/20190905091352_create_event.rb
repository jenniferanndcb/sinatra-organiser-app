class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.string :attendee 
      t.date :date_from 
      t.date :date_to 
      t.time :time
      t.timestamp 
      t.belongs_to :user 
    end
  end
end

class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
    t.integer :attendee_id, foreign_key: true
    t.integer :attended_event_id, foreign_key: true
      t.timestamps
    end
  end
end

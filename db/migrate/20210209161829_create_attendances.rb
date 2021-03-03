class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :attendee
      t.integer :event_to_attend

      t.timestamps
    end
  end
end

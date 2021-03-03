class RenameAttendeeToAttendeeId < ActiveRecord::Migration[6.0]
  def change
    rename_column :attendances, :attendee, :attendee_id
    rename_column :attendances, :event_to_attend, :event_to_attend_id
  end
end

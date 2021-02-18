module EventsHelper
  def edit_event(event)
    link_to 'Edit', edit_event_path(event) if user_signed_in? && current_user.id == event.user_id
  end

  def delete_event(event)
    return unless user_signed_in? && current_user.id == event.user_id

    link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }
  end

  def attend_confirmed(event)
    return unless current_user.id == event.attendee_id

    Event.find_by(id: event.event_to_attend_id.to_s)
  end

  def attendance_fill
    Attendance.all.each do |attendee|
      next unless @event.id == attendee.event_to_attend_id

      @v = User.find_by(id: attendee.attendee_id.to_s)[:username]
      @attendance_list << @v
      @v = ''
    end
  end

  def attendance_confirm
    return if @attendance_list.include?(current_user.username)

    link_to 'Confirm attendance', new_event_attendance_path(@event)
  end
end

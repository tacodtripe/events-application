module EventsHelper
  def edit_event(event)
    link_to 'Edit', edit_event_path(event) if user_signed_in? && current_user.id == event.user_id
  end

  def delete_event(event)
    return unless user_signed_in? && current_user.id == event.user_id

    link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }
  end
end

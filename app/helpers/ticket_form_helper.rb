helpers do
  def build_event_selection(event_name)
    selection = ""
    Event.all.each do |event|
      if event_name == event.name
        selection += "<option selected='selected' value='#{event.name}'>#{event.name}</option>"
      else
        selection += "<option value='#{event.name}'>#{event.name}</option>"
      end
    end
    selection
  end
end

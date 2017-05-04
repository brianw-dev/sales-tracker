class Ticketmaster
  def self.get_events()
    response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=glhgjO9LC0KSsvExsqAUBmav52p4fjUz&startDateTime=2017-05-05T00:00:00Z&endDateTime=2017-05-07T12:00:00Z&city=san francisco&classificationName=music")
  end
end

require "open-uri"
require "json"

username = "YOUR_USERNAME"

SCHEDULER.every "60m", first_in: 0 do |job|
  coderwall = JSON.parse URI.parse("https://coderwall.com/#{username}.json").read
  send_event "coderwall", coderwall
end

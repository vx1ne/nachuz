module Bot::DiscordEvents
  module React
    extend Discordrb::EventContainer
    mention do |event|
      event.respond("**type ^help bruh**")
    end
  end
end

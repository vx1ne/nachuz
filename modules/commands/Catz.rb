require 'rest-client'
require 'json'
require 'open-uri'

module Bot::DiscordCommands
  module Catz
    extend Discordrb::Commands::CommandContainer
    command([:cat, :kicius, :kitten, :catz], rate_limit_message: 10) do |event|

      catz = open('http://random.cat/meow')
      response = JSON.parse(catz.read)

      event.channel.send_embed do |embed|

        embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: event.author.username, icon_url: event.author.avatar_url)
        embed.image = Discordrb::Webhooks::EmbedImage.new(url: response['file'])
        embed.timestamp = Time.now.getutc

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

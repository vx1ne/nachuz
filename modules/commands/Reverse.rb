module Bot::DiscordCommands
  module Reverse
    extend Discordrb::Commands::CommandContainer
    command(:reverse, min_args: 1, usage: '^reverse <text>') do |event, *text|

      event.channel.send_embed do |embed|

        r = text.join(' ')

        embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: event.author.username, icon_url: event.author.avatar_url)
        embed.title = "↪️️ REVERSE ESREVER ↩️"
        embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://i.imgur.com/PhKM34D.png')
        embed.description = "#{r.reverse}"
        embed.timestamp = Time.now.getutc

        embed.color = "#766066"

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

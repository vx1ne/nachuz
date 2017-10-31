module Bot::DiscordCommands
  module Announce
    extend Discordrb::Commands::CommandContainer
    command(:announce, min_args: 1, required_permissions: [:manage_messages], usage: '^announce <text>') do |event, *text|

      event.channel.send_embed do |embed|

        event.message.delete

        embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: event.author.username, icon_url: event.author.avatar_url)
        embed.title = "ℹ️ ANNOUNCEMENT ℹ️"
        embed.thumbnail= Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://i.imgur.com/PhKM34D.png')
        embed.description = "#{text.join(' ')}"
        embed.timestamp = Time.now.getutc

        embed.color = "#766066"

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

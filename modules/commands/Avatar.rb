module Bot::DiscordCommands
  module Avatar
    extend Discordrb::Commands::CommandContainer
    command :avatar do |event|

      event.channel.send_embed do |embed|

        embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: event.author.username, icon_url: event.author.avatar_url)
        embed.image = Discordrb::Webhooks::EmbedImage.new(url: event.author.avatar_url)
        embed.timestamp = Time.now.getutc

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

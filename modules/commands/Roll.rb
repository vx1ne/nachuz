module Bot::DiscordCommands
  module Roll
    extend Discordrb::Commands::CommandContainer
    command :roll do |event|

      diceroll = rand(1..6)

      event.channel.send_embed do |embed|

        embed.title = "🔗 ROLL the DICE 🔗"
        embed.thumbnail= Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://i.imgur.com/PhKM34D.png')
        embed.description = "🎲 **#=>** #{diceroll}"
        embed.timestamp = Time.now.getutc

        embed.color = "#8de39b"

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

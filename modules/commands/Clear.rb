module Bot::DiscordCommands
  module Clear
    extend Discordrb::Commands::CommandContainer
    command(:clear, min_args: 1, max_args: 1, required_permissions: [:manage_messages], usage: '^clear <integer>') do |event, number|
      event.channel.prune(number.to_i)

      event.channel.send_embed do |embed|

        embed.title = "💬 CHAT CLEARED 💬"
        embed.thumbnail= Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://i.imgur.com/PhKM34D.png')
        embed.description = "Cleared totally: **#{number}**"
        embed.timestamp = Time.now.getutc

        embed.color = "#766066"

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

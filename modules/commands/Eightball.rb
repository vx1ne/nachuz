module Bot::DiscordCommands
  module Eightball
    extend Discordrb::Commands::CommandContainer
    command(:eightball, min_args: 1, usage: '^eightball <text>') do |event|

      ballanswer = ['of course', 'ask me later', 'stars says no', 'maybe', 'youre right'].sample

      event.channel.send_embed do |embed|

        embed.title = "🎱 Mysterious 8BALL 🎱"
        embed.thumbnail= Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://i.imgur.com/PhKM34D.png')
        embed.description = "8BALL says **#=>** *#{ballanswer}*"
        embed.timestamp = Time.now.getutc

        embed.color = "#fb4e39"

        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")
      end
    end
  end
end

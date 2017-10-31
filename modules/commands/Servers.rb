module Bot::DiscordCommands
  module Servers
    extend Discordrb::Commands::CommandContainer
    command :servers do |event|

      event.channel.send_embed do |embed|
        embed.color = "#6b56ba"
        embed.timestamp = Time.now.getutc

        embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://i.imgur.com/PhKM34D.png")
        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")

        embed.add_field(name: "💬 Servers using Nachuz", value: "🔗 **TOTAL:** *(#{event.bot.servers.count})*\n🔗 **LIST:** " + event.bot.servers.collect { |_, s| s.name }.join(', ') )
        embed.add_field(name: "💬 Users of Nachuz", value: "🔗**TOTAL:** *(#{event.bot.users.count})*")
      end
    end
  end
end

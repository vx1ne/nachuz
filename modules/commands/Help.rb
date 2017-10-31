module Bot::DiscordCommands
  module Help
    extend Discordrb::Commands::CommandContainer
    command :help do |event|

      event.channel.send_embed do |embed|
        embed.color = "#d6d2b8"
        embed.timestamp = Time.now.getutc

        embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://i.imgur.com/PhKM34D.png")
        embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "NachuzBot ©️ 2017-2018")

        embed.add_field(name: "💬 About me", value: "**Nachuz** is ruby-based discordbot, by <@283923349686452224> (keebe#9617). Its simple, useful.")
        embed.add_field(name: "🔗 Commands for everyone", value: "- [^help]()\n- [^roll]()\n- [^avatar]()\n- [^eightball]()\n- [^reverse]()\n- [^catz]()\n- [^servers]() ", inline: true)
        embed.add_field(name: "🔗 Moderation commands", value: "- [^announce]()\n- [^clear]()", inline: true)
      end
    end
  end
end

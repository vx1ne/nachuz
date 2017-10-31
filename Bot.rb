require 'discordrb'
require 'ostruct'
require 'date'
require 'time'

module Bot

  BOT = Discordrb::Commands::CommandBot.new(token: 'MzcyNzczMzQ1OTE5MjM4MTU1.DNJDxA.PB2eOi4juqLibBEKdCyH7ndxgP0', client_id: 372773345919238155, prefix: '^')

  def self.load_modules(klass, path)
    new_module = Module.new
    const_set(klass.to_sym, new_module)
    Dir["modules/commands/*.rb"].each { |file| load file }
    new_module.constants.each do |mod|
      BOT.include! new_module.const_get(mod)
    end
  end

  load_modules(:DiscordCommands, 'Commands')
  load_modules(:DiscordEvents,'Events')

  BOT.run
end

require 'discordrb'
require 'ostruct'
require 'date'
require 'time'

module Bot

  BOT = Discordrb::Commands::CommandBot.new(token: 'token', client_id: id, prefix: '^')

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

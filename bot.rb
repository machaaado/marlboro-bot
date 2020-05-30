require 'telegram_bot'

token = '1282419483:AAELg1cWpXm-CACM4bp758BJCUjRibQ7gRI'

bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
    puts "@#{message.from.username}: #{message.text}"
    command = message.get_command_for(bot)
  
    message.reply do |reply|
      case command
      when /start/i
        reply.text = "/vamfuma vamo?"
    when /vamofuma/i
        greetings = ['ihiii', 'vamfuma', 'cade', 'q', 'vamo']
        reply.text = "#{greetings.sample.capitalize}, #{message.from.first_name}!"
    when /conferir/i
      RubyPython.start
      TUYOBOTSHEET = RubyPython.import('TUYOBOTSHEET')
      puts TUYOBOTSHEET.run().rubify #pegar infos da planilha da loja
      
      RubyPython.stop
  
      else
        reply.text = "q q c falou? eu nao sei o que é #{command.inspect}."
      end
      puts "sending #{reply.text.inspect} to @#{message.from.username}"
      reply.send_with(bot)
    end
  end
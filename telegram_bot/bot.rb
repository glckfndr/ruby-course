require_relative 'game'
require 'telegram/bot'

game = Game.new method(:puts)
game.play

# token = 'YOUR_BOT_TOKEN'

# Telegram::Bot::Client.run(token) do |bot|
#   bot.listen do |message|
#     case message.text
#     when '/start'
#       bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to Tic-Tac-Toe! Type /play to start a new game.')
#     when '/play'
#       # Initialize your Tic-Tac-Toe game logic here
#       # You'll need to keep track of the game state and handle user moves
#     else
#       bot.api.send_message(chat_id: message.chat.id, text: 'Unknown command. Type /play to start a new game.')
#     end
#   end
# end

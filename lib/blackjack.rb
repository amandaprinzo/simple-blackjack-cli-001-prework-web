def welcome
  puts "Welcome to the Blackjack Table" 
end

def deal_card
    card = rand(1..11)
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    answer = gets.chomp
    #puts "#{answer}"
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
      2.times do
      deal_card.to_i
    end
      sum = deal_card + deal_card
      display_card_total(sum)
      return sum
end

def hit?(card_total)
    prompt_user
    get_user_input
    return card_total
      if get_user_input == "h"
        deal_card
        new_total = card_total.to_i += deal_card.to_i
      end
end

def invalid_command
  puts "Sorry, I don't understand"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

end
    

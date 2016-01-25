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
      sum
end

def hit?(card_total)
    prompt_user
      if get_user_input == "h"
        card_total += deal_card
      end
      card_total
end

def invalid_command
  puts "Sorry, I don't understand"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    initial_round
    cards = deal_card + deal_card
    #display_card_total(cards)
      begin 
        hit?(cards)
        cards += deal_card;
        display_card_total(cards)
      end until cards > 21
  end_game(cards)
end
    

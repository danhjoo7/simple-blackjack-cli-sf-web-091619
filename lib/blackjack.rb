def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total 
end

def hit?(total)
  prompt_user
  user = get_user_input
  if user == "h"
    total += deal_card
  elsif user == "s"
    total
  else 
    invalid_command 
    hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  one = initial_round 
  until one > 21 do 
      one = hit?(one)
      display_card_total(one)
    end
  end_game(one)
end
    

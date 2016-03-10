
#  hash: store the set of optimal moves for a 1 deck blackjack hand,
#  ask the user for his or her current hand (and the dealer's up card),
#  then give the user his or her optimal move.

#  Hash.new { |hash, key| hash
#  [key] =  }
#  hash_probabilities = {}

# hash 5, 2 => H
#     5, 3 => H
#     5, 4 => H
#     5, 5 => H
#     5, 6 => H
#     5, 7 => H
#     5, 8 => H
#     5, 9 => H
#     5, 10 => H
#     5, A => H
#
# hash 6, 2 => H
#      6, 2 => H
#      6, 3 => H
#      6, 4 => H
#      6, 5 => H
#      6, 6 => H
#      6, 7 => H
#      6, 8 => H
#      6, 9 => H
#      6, 10 => H
#      6, A => H
#

hard_solutions = {
  5 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "H",     # => "H"
    5 => "H"    # => "DH"
    6 => "H"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  6 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "H",     # => "H"
    5 => "H"    # => "DH"
    6 => "H"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  7 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "H",     # => "H"
    5 => "H"    # => "DH"
    6 => "H"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  8 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "H",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  9 => {
    2 => "DH"    # => "DH"
    3 => "DH"    # => "DH"
    4 => "DH"    # => "DH"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  10 => {
    2 => "DH"    # => "DH"
    3 => "DH"    # => "DH"
    4 => "DH"    # => "DH"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "DH",     # => "H"
    8 => "DH",     # => "H"
    9 => "DH",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  11 => {
    2 => "DH"    # => "DH"
    3 => "DH"    # => "DH"
    4 => "DH"    # => "DH"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "DH",     # => "H"
    8 => "DH",     # => "H"
    9 => "DH",     # => "H"
    10 => "DH",     # => "H"
    "A" => "DH",     # => "H"
  }
  12 => {
    2 => "H"    # => "DH"
    3 => "H"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  13 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  14 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  15 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  16 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  17 => {
     2 => "S"    # => "DH"
     3 => "S"    # => "DH"
     4 => "S"    # => "DH"
     5 => "S"    # => "DH"
     6 => "S"    # => "DH"
     7 => "S",     # => "H"
     8 => "S",     # => "H"
     9 => "S",     # => "H"
     10 => "S",     # => "H"
     "A" => "S",     # => "H"
  }
  18 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  19 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  20 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
    }
  21 => {
    2 => "S"    # => "DH"
    3 => "S"    # => "DH"
    4 => "S"    # => "DH"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
}

#  other_hash = hard_solutions[8][2] # => "H"

soft_solutions = {
  13 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  14 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  15 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  16 => {
    2 => "H",     # => "H"
    3 => "H",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  17 => {
    2 => "DH",     # => "H"
    3 => "DH",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH"    # => "DH"
    6 => "DH"    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  18 => {
    2 => "S",     # => "H"
    3 => "DS",     # => "H"
    4 => "DS",     # => "H"
    5 => "DS"    # => "DH"
    6 => "DS"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "S",     # => "H"
  }
  19 => {
    2 => "S",     # => "H"
    3 => "S",     # => "H"
    4 => "S",     # => "H"
    5 => "S"    # => "DH"
    6 => "DS"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  20 => {
    2 => "S",     # => "H"
    3 => "S",     # => "H"
    4 => "S",     # => "H"
    5 => "S"    # => "DH"
    6 => "S"    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  21 => {
    2 => "S",     # => "H"
    3 => "S",     # => "H"
    4 => "S",     # => "H"
    5 => "S",    # => "DH"
    6 => "S",    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
}

pair_solutions = {
  2,2 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  3,3 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "P",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  4,4 => {
    2 => "H",
    3 => "H",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "H",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  5,5 => {
    2 => "DH",
    3 => "DH",     # => "H"
    4 => "DH",     # => "H"
    5 => "DH",    # => "DH"
    6 => "DH",    # => "DH"
    7 => "DH",     # => "H"
    8 => "DH",     # => "H"
    9 => "DH",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  6,6 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "H",     # => "H"
    9 => "H",     # => "H"
    10 => "H",     # => "H"
    "A" => "H",     # => "H"
  }
  7,7 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "P",     # => "H"
    9 => "H",     # => "H"
    10 => "S",     # => "H"
    "A" => "H",     # => "H"
  }
  8,8 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "P",     # => "H"
    9 => "P",     # => "H"
    10 => "P",     # => "H"
    "A" => "P",     # => "H"
  }
  9,9 => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "S",     # => "H"
    8 => "P",     # => "H"
    9 => "P",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  10,10 => {
    2 => "S",
    3 => "S",     # => "H"
    4 => "S",     # => "H"
    5 => "S",    # => "DH"
    6 => "S",    # => "DH"
    7 => "S",     # => "H"
    8 => "S",     # => "H"
    9 => "S",     # => "H"
    10 => "S",     # => "H"
    "A" => "S",     # => "H"
  }
  A,A => {
    2 => "P",
    3 => "P",     # => "H"
    4 => "P",     # => "H"
    5 => "P",    # => "DH"
    6 => "P",    # => "DH"
    7 => "P",     # => "H"
    8 => "P",     # => "H"
    9 => "P",     # => "H"
    10 => "P",     # => "H"
    "A" => "P",     # => "H"
  }
}

user_input = gets.chomp

#  need to sum the first two user inputs and then look up the hash value based
#  on the two keys of user sum and dealer card

player_hand = []  #create an empty array
  puts "Please enter your first card: (1-10, or A)"
  #  user_input = a
  player_hand << user_input

  puts "Please enter your second card: "
  #  user_input = b
  player_hand << user_input

  puts "Please enter the dealer's card: "
  #  user_input = c
  dealer_hand << user_input

if player_hand.uniq.count == 1  #array index[0, 1] are equal?
  return pair_solutions
elsif player_hand.include?("A")
  return soft_solutions
else
  return hard_solutions
end

def hash_key
#  sum array player_hand
sum = 0
  return player_hand.each(0){|sum,x| sum + x }
end
#  sum player_hand[a,b] = key
#  puts[key] => value [e.g. "H"]
pair_solutions[hash_key] # => value e.g. "H"
soft_solutions[hash_key]
hard_solutions[hash_key]



"H" = "hit"
"S" = "stand"
"P" = "split"
"Dh" = "double if possible, otherwise hit"
"Ds" = "double if possible, otherwise stand"

if condition
    puts "Your optimal move is to #{"stand"}."
  end
end

# in this limited scenario, your hand is soft if you have a single Ace and
  # hard if you do not (a pair is a pair regardless of whether they are Aces)

#user enter "J", "Q", or "K" for Jack, Queen, or King, enter A for an Ace.

#
# Player	Dealer's Card
# Hard	2	3	4	5	6	7	8	9	10	A
# 5	    H	H	H	H	H	H	H	H	H	H
# 6	    H	H	H	H	H	H	H	H	H	H
# 7	    H	H	H	H	H	H	H	H	H	H
# 8	    H	H	H	Dh	Dh	H	H	H	H	H
# 9	    Dh	Dh	Dh	Dh	Dh	H	H	H	H	H
# 10	  Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	H	H
# 11	  Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh
# 12	  H	H	S	S	S	H	H	H	H	H
# 13	  S	S	S	S	S	H	H	H	H	H
# 14	  S	S	S	S	S	H	H	H	H	H
# 15  	S	S	S	S	S	H	H	H	H	H
# 16  	S	S	S	S	S	H	H	H	H	H
# 17  	S	S	S	S	S	S	S	S	S	S
# 18  	S	S	S	S	S	S	S	S	S	S
# 19  	S	S	S	S	S	S	S	S	S	S
# 20  	S	S	S	S	S	S	S	S	S	S
# 21  	S	S	S	S	S	S	S	S	S	S
#
# Soft	2	3	4	5	6	7	8	9	10	A
# 13	H	H	Dh	Dh	Dh	H	H	H	H	H
# 14	H	H	Dh	Dh	Dh	H	H	H	H	H
# 15	H	H	Dh	Dh	Dh	H	H	H	H	H
# 16	H	H	Dh	Dh	Dh	H	H	H	H	H
# 17	Dh	Dh	Dh	Dh	Dh	H	H	H	H	H
# 18	S	Ds	Ds	Ds	Ds	S	S	H	H	S
# 19	S	S	S	S	Ds	S	S	S	S	S
# 20	S	S	S	S	S	S	S	S	S	S
# 21	S	S	S	S	S	S	S	S	S	S
# Pair	2	3	4	5	6	7	8	9	10	A
# 2,2	P	P	P	P	P	P	H	H	H	H
# 3,3	P	P	P	P	P	P	P	H	H	H
# 4,4	H	H	P	P	P	H	H	H	H	H
# 5,5	Dh	Dh	Dh	Dh	Dh	Dh	Dh	Dh	H	H
# 6,6	P	P	P	P	P	P	H	H	H	H
# 7,7	P	P	P	P	P	P	P	H	S	H
# 8,8	P	P	P	P	P	P	P	P	P	P
# 9,9	P	P	P	P	P	S	P	P	S	S
# 10,10	S	S	S	S	S	S	S	S	S	S
# A,A	P	P	P	P	P	P	P	P	P	P
#
# H	Hit
# S	Stand
# P	Split
# Dh	Double if possible, otherwise Hit
# Ds	Double if possible, otherwise Stand

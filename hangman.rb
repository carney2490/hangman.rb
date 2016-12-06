


puts "Pick a word"
y = gets.chomp

x = "lost"


words = %W"#{x} #{y}"
total_chances = 5
wrong_try = 0
right_guess = ''


hanged = <<HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
HANG
survived = <<WIN
   (@)
  ^\\|
    |/^
____|_____
WIN

#puts words.inspect

#word = words [rand(words.length)-1]
word = words[1]

def get_placeholder sample_word, guessed_words
  placeholder = ''
  sample_word.chars { |char| 
    placeholder += (guessed_words.include? char)? char : '#'
  }

  placeholder
end
#
#puts `clear`
puts 'Guess what is:'+ get_placeholder(word, '')

while true
  print "Enter word [#{total_chances - wrong_try} chances left]:"

  char = gets.chomp
 # puts `clear`
  
  if word.include? char

    if(right_guess.include? char)
      puts char + ' is already given and accepted.'
      puts 'Try another: ' + get_placeholder(word, right_guess)
    else
      right_guess = right_guess + char
      placeholder = get_placeholder(word, right_guess)

      puts 'Great! ' + placeholder
    end

    unless placeholder.include? '#'
      puts "WELL DONE!! YOU SURVIVED"
      puts survived
      break
    end
  else
    puts "Sorry! The word dosen't contains '#{char}'"
    wrong_try += 1

    if (wrong_try == total_chances)
      puts "YOU HANGED!"
      puts hanged
      break
    else
      puts 'Try another: ' + get_placeholder(word, right_guess)
    end
  end

end










=begin
puts "Pick a letter"
letter = gets.chomp
pickedword = letter
=end
=begin
word = nil      #no word or letters yet
tries = 0       #setting the tries to zero
letter = nil    #no word or letters yet

puts "This is a game for 2. Player 1 writes which word they want player 2 to guess."
puts "Player 1, write a word: "
word = gets.chomp
#letters = []
#letters = word.split(//)
#progress = ["_ " * letters.length]
#puts progress
puts "Player 2, guess a letter: "
total_chances = 5
wrong_try = 0
right_guess = ''

hanged = <<HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
HANG
survived = <<WIN
   (@)
  ^\\|
    |/^
____|_____
WIN

#puts words.inspect

#word = words[rand(words.length) - 1]
#word = words[1]

def get_placeholder sample_word, guessed_words
  placeholder = ''
  sample_word.chars { |char| 
    placeholder += (guessed_words.include? char)? char : '#'
  }

  placeholder
end
#
#puts `clear`
puts 'Guess what is:'+ get_placeholder(word, '')

while true
  print "Enter word [#{total_chances - wrong_try} chances left]:"

  char = gets.chomp
 # puts `clear`
  
  if word.include? char

    if(right_guess.include? char)
      puts char + ' is already given and accepted.'
      puts 'Try another: ' + get_placeholder(word, right_guess)
    else
      right_guess = right_guess + char
      placeholder = get_placeholder(word, right_guess)

      puts 'Great! ' + placeholder
    end

    unless placeholder.include? '#'
      puts "WELL DONE!! YOU SURVIVED"
      puts survived
      break
    end
  else
    puts "Sorry! The word dosen't contains '#{char}'"
    wrong_try += 1

    if (wrong_try == total_chances)
      puts "YOU HANGED!"
      puts hanged
      break
    else
      puts 'Try another: ' + get_placeholder(word, right_guess)
    end
  end

end
=end

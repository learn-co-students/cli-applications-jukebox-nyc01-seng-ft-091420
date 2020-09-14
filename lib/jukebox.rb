# Add your code here

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)


def help
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end

def play(songs)
  
  puts "Please enter a song name or number:"
  song_name = gets.strip
  
  # binding.pry
  if song_name.to_i >= 1 && song_name.to_i <= songs.length
     puts "Playing #{songs[song_name.to_i-1]}"
  elsif songs.include?(song_name)
    puts "Playing #{songs.find{|element| element == song_name}}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songs)
  
  songs.each_with_index{|item, index|
    puts "#{index +1}, #{item}"
  }
  
end


def exit_jukebox
  
  puts "Goodbye"
  
end

def run(songs)
  
  while true do
    
    puts "Please enter a command:"
    user_input = gets.chomp
    
    case user_input
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
     list(songs)
    else
      puts "Invalid entry"
    end
  end
end
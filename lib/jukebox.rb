# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  no_result = 0
  songs.each_with_index do |song, index|
    if (input.to_i - 1) == index || input == song
      puts "Playing #{song}"
      break
    else
      no_result += 1
      if no_result == songs.size
        puts "Invalid input, please try again"
      end
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  case input
  when "help"
    help
    run(songs)
  when "list"
    list(songs)
    run(songs)
  when "play"
    play(songs)
    run(songs)
  when "exit"
    exit_jukebox
    exit
  else
    puts "Please enter a command:"
    input = gets.strip
  end
end
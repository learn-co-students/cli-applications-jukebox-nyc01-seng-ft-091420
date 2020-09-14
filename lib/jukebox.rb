
def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  case input
    when "exit"
      exit_jukebox
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
  end
end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs) 
  songs.each_with_index do |element, i|
    puts "#{i+1}. #{element}"
  end
end


def exit_jukebox
  puts "Goodbye!"
end


def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.strip
  
  case
    when (1..9).include?(selection.to_i)
      puts "Playing " + songs[selection.to_i - 1]
    when songs.any? { |song| song.include?(selection)}
      x = songs.select { |song| song.include?(selection)}
      puts "Playing " + x.first
    else
      puts "Invalid input, please try again"
  end
end



#this lab really confused me because technically after you input list, help, or if play returns the invalid input message, run(songs) needs to occur again. Also for the play method, the test is first looking for the method to return the name of the song, but then fails when you dont return "playing <song name>".  remember to ask instructor about how this code was tested
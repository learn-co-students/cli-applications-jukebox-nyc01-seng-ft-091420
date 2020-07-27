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
  message = "Invalid input, please try again"
  puts "Please enter a song name or number:"
  user_response = gets.strip
  songs.each_with_index do |song, index|
    if user_response.to_i == index + 1 || user_response == song
      message = "Playing #{song}"
    end
  end
  puts message
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  user_response = ''
  until user_response == 'exit' do
    puts "Please enter a command:"
    user_response = gets.strip
    case user_response
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    end
  end
  exit_jukebox
end
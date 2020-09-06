require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song_exists = false
  songs.each_with_index do |song, index|
    if input == (index + 1).to_s || input == song
    puts "Playing #{song}"
    song_exists =  true
    end
  end
  puts "Invalid input, please try again" if !song_exists
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{songs[index]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    input = gets.strip
    help if input == "help"
    list(songs) if input == "list"
    play(songs) if input == "play"
    exit_jukebox if input == "exit"
    break if input == "exit"
    end
end
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i.next}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.strip

  if song_input.to_i >= 1 && song_input.to_i <= songs.length
      puts "Playing #{songs[song_input.to_i-1]}"
  elsif songs.include?(song_input)
      found_song = songs.find do |song|
        song_input == song
      end
      puts "Playing #{found_song}"
  else
      puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_input = ""
  while user_input != "exit"
  puts "Please enter a command:"
  user_input = gets.strip
  case user_input
  when "help"
  help
  when "play"
  play(songs)
  when "list"
  list(songs)
  when "exit"
  exit_jukebox
  else
  puts "Oops please try again"
    end
  end
end

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
  exit_app = exit_jukebox
  help_me = help
  play_songs = play(songs)
  list_songs = list(songs)
  case user_input
  when "exit"
  exit_app
  when "help"
  help_me
  when "play"
  play_songs
  when "list"
  list_songs
  else
  puts "Please enter a valid command:"
    end
  end
  exit_app
end

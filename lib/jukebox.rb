require "pry"

# Add your code here
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

def list (song_array)
  i = 0
  while i < song_array.length
    song_array[i] = "#{i+1}. #{song_array[i]}"
    puts song_array[i]
    i += 1
  end
end



def play(song_array)
  binding.pry
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if song_array.include? (song_choice)
    song_array.each do |song|
      if song == song_choice
        puts "Playing #{song}"
      end
    end
  elsif song_choice.to_i.between?(1,song_array.length)
    puts "Playing #{song_array[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye!"
end

def run(song_array)
  puts"Please enter a command:"
  flag = false
  while flag == false
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(song_array)
    elsif input == "play"
      play(song_array)
    elsif input == "exit"
      exit_jukebox
      flag = true
    else
      help
    end
  end
end
#run(songs)




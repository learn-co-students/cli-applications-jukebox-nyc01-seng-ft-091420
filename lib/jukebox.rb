# Add your code here
def say_hello(name)
    puts "Hi #{name}!"
end


def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song,index|
        puts "#{index+1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    max = songs.length + 1
    if songs.include?(input)
        puts "Playing #{input}"        
    elsif (1..max).include?(input.to_i)
        song_name = songs[input.to_i - 1]
        puts "Playing #{song_name}"
    else
        puts "Invalid input, please try again"
        input = gets.strip
    end
end


def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    input = gets.strip
    valid_commands = ['exit','help','list','play']

    until valid_commands.include?(input)
        puts "Invalid entry. Try again:"
        input = gets.strip
    end

    if input == 'exit'
        exit_jukebox
    elsif input == 'help'
        help
    elsif input == 'list'
        list(songs)
    elsif input == 'play'
        play(songs)
    else
        puts "Invalid entry"
    end
end
require 'colorize'
require 'colorized_string'

user_name = ARGV.to_s

# ARGV.clear 

### ART ###
def border
    puts "*".colorize(:blue)*30
end

def clear
    puts "\e[H\e[2J"
end


def animation(file_location)
    3.times do
    i = 1
    while i < 3
        puts "\e[H\e[2J"
        border
      File.foreach(file_location + "#{i}.rb") { |f| puts f }
      sleep(0.3)
      i += 1
    end
  end
end

def welcome
    border
    animation("./animation/")
    border
    puts "        B O T   D O G       "
    border
    `afplay -t 1 ./sound-files/bark.mp3`
end


### Menu Screen ###
def menu
    # puts "Hooman! What would you like to do?"
    border
    # puts "Press 1 to " + "P A T".colorize(:green)
    # puts "Press 2 to " + "F E E D".colorize(:green)
    # puts "Press 3 to " + "P L A Y".colorize(:green)
    # puts "Press 9 to " + "Q U I T".colorize(:red)
    puts "  PRESS  |  PRESS  |  PRESS  "
    puts "    1    |    2    |    3    "
    puts "   T O   |   T O   |   T O   "
    puts "  "+"P A T ".colorize(:green) + " |"+" F E E D ".colorize(:green)+"|"+" P L A Y ".colorize(:green)
    puts "------------------------------"
    puts "  P R E S S  9  T O  Q U I T"
    border
end




### Counters ###
def pat
$pat_counter += 1
    if $pat_counter == 3
        clear
        border
        animation("./animation/sleep/")
        border 
        puts "You pat BotDog so much"
        puts " that he went to bed!"
        puts "Come back later!"
        exit
    elsif $pat_counter < 3
        clear
        border
        puts "=                            ="
        puts "=            _               ="
        puts "=       /\\,_/\\|              ="
        puts "=       /==_ (               ="
        puts "=      (Y_.) /       ///     ="
        puts "=       U ) (__,_____) )     ="
        puts "=         )'   >     `/      ="
        puts "=         |._  _____  |      ="
        puts "=         | | (    \\| (      ="
        puts "=         | | |    || |      ="
        puts "=    ,,-. ),)_/ ., ))_/,,.-,_="
        puts "=            . ,-/,_         ="
        puts "=                            ="
        border
            if $pat_counter == 1
                puts "You pat BotDog!"
            elsif $pat_counter == 2
                puts "BotDog looks a little sleepy!"
            end       
    end
end


def feed
    $feed_counter += 1
    if $feed_counter == 3
        clear
        border
        animation("./animation/poop/")
        border
        puts "You fed BotDog too much."
        puts "He pooped in your terminal!"
        $feed_counter = 0
    elsif $feed_counter < 3
        clear
        border
        puts "=                            ="      
        puts "=     ________________       ="
        puts "=    '------._.------'\\      ="
        puts "=      \\_______________\\     ="
        puts "=      .'|            .'|    ="
        puts "=    .'_____________.' .|    ="
        puts "=    |              |   |    ="
        puts "=    |  BotDog _.-. | . |    ="
        puts "=    |  *     (_.-' |   |    ="
        puts "=    |    Biscuits  |  .|    ="
        puts "=    | *          * |  .'    ="
        puts "=    |______________|.'      ="
        puts "=                            ="
        border
            if $feed_counter == 1
                puts "You fed BotDog!"
            elsif $feed_counter == 2
                puts "You fed BotDog more biscuits!"
            end
        
        end
    end





def play
    $play_counter += 1
    if $play_counter == 3
        clear
        border
        animation("./animation/pee/")
        border
        puts "BotDog got too excited..."
        puts "and peed in the terminal!"
    elsif $play_counter < 3
        clear
        border
        puts "=                            ="
        puts "=                            ="
        puts "=                            ="
        puts "=                       _    ="       
        puts "=                  .  -  ()  =" 
        puts "=              .--~~,__      =" 
        puts "= :-....,-------`~~'._.''    =" 
        puts "=   `-,,,  ,_      ;'~U'     =" 
        puts "=    _,-' ,'`-__; '--.       =" 
        puts "=   (_/'~~      ''''(;       =" 
        puts "=                            ="
        puts "=                            =" 
        puts "=                            ="
        border
            if $play_counter == 1
                puts "You threw a ball for BotDog!"
            elsif $play_counter == 2
                puts "Wow. BotDog is really excited!"
            end
    end
end


### GAME PLAY ###

welcome
puts "Hey #{ARGV}! Meet BotDog."
puts "Your new favourite doggo"
puts "Take good care of him."
puts "Select from the below".colorize(:light_blue)
$pat_counter = 0
$feed_counter = 0
$play_counter = 0

game = true
while game == true
    
    menu
    selection = gets.chomp.to_i

    if selection == 1
        pat
    elsif selection == 2
        feed
    elsif selection == 3
        play
    elsif selection == 9
        game = false
        exit
    else 
        puts "Uh oh! Can't do that yet!"
        puts "Please select again"
    end
end
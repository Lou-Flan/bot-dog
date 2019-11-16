############################## GEMS ##############################
require 'colorize'
# require 'colorized_string'
require 'tty-progressbar'


############################## BORDERS/CLEAR SCREEN/TEXT ##############################
def border
    puts "*".colorize(:magenta)*30
end

def empty_border(number) 
    (number).times {puts "=#{" "*28}="}
  end

def clear
    puts "\e[H\e[2J"
end

def centre_text(string)
    puts string.lines.map { |line| line.strip.center(30)}.join("\n")
end

############################## ANIMATIONS ##############################
def animation(file_location)
    border
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

def loading(string)
    bar = TTY::ProgressBar.new("#{string} [:bar]", total: 20)
    30.times do
    sleep(0.04)
    bar.advance(1)
    end
    
  end

############################## WELCOME SCREEN ##############################
def welcome
    border
    animation("./resources/animation/")
    border
    puts "        B O T   D O G       "
    border
    `afplay -t 1 ./resources/sound-files/bark.mp3`
end

############################## MENU SCREEN ##############################
def menu
    border
    centre_text("  PRESS  |  PRESS  |  PRESS  \n    1    |    2    |    3    \n       T O   |   T O   |   T O   \n")
    puts "  "+"P A T ".colorize(:green) + " |"+" F E E D ".colorize(:green)+"|"+" P L A Y ".colorize(:green)
    centre_text("------------------------------\nP R E S S  9  T O  Q U I T")
    border
end

############################ ART ##############################
def pat_art
    clear
    border
    empty_border(2)
    puts "=       /\\,_/\\|              ="
    puts "=       /==_ (               ="
    puts "=      (Y_.) /       ///     ="
    puts "=       "+"U".colorize(:red)+" ) (__,_____) )     ="
    puts "=         )'   >     `/      ="
    puts "=         |._  _____  |      ="
    puts "=         | | (    \\| (      ="
    puts "=         | | |    || |      ="
    puts "=    ,,-. ),)_/ ., ))_/,,.-,_="
    puts "=            . ,-/,_         ="
    empty_border(1)
    border
end

def feed_art
    clear
    border
    empty_border(2)
    puts "=    '------._.------'\\      ="
    puts "=      \\_______________\\     ="
    puts "=      .'|            .'|    ="
    puts "=    .'_____________.' .|    ="
    puts "=    |              |   |    ="
    puts "=    |  "+"BotDog".colorize(:yellow)+" _.-. | . |    ="
    puts "=    |  *     (_.-' |   |    ="
    puts "=    |    "+"Biscuits ".colorize(:yellow)+" |  .|    ="
    puts "=    | *          * |  .'    ="
    puts "=    |______________|.'      ="
    empty_border(1)
    border
end

def play_art
    clear
    border
    empty_border(4)       
    puts "=                  .  -  "+"()".colorize(:red)+"  =" 
    puts "=              .--~~,__      =" 
    puts "= :-....,-------`~~'._.''    =" 
    puts "=   `-,,,  ,_      ;'~U'     =" 
    puts "=    _,-' ,'`-__; '--.       =" 
    puts "=   (_/'~~      ''''(;       =" 
    puts "=                            ="
    empty_border(2)
    border
end

############################## PLAY OPTIONS ##############################
def pat
$pat_counter += 1
    if $pat_counter == 3
        clear
        border
        animation("./resources/animation/sleep/")
        border 
        centre_text("You pat BotDog so much\n that he went to bed!\nCome back later!")
        border
        exit
    elsif $pat_counter < 3
        clear
        empty_border(13)
            if $pat_counter == 1
                loading("Patting")
                pat_art
                centre_text("#{$user_name}, you pat BotDog!")
            elsif $pat_counter == 2
                loading("Patting")
                pat_art
                centre_text("BotDog looks a little sleepy...")
            end       
    end
end


def feed
    $feed_counter += 1
    if $feed_counter == 3
        clear
        border
        animation("./resources/animation/poop/")
        border
        centre_text("You fed BotDog too much.\nHe pooped in your terminal!")
        $feed_counter = 0
    elsif $feed_counter < 3
        clear
        empty_border(13)
            if $feed_counter == 1
                loading("Feeding")
                feed_art
                centre_text("#{$user_name}, you fed BotDog!")
            elsif $feed_counter == 2
                loading("Feeding")
                feed_art
                centre_text("You fed BotDog more biscuits...")
            end
        
        end
    end


def play
    $play_counter += 1
    if $play_counter == 3
        clear
        border
        animation("./resources/animation/pee/")
        border
        centre_text("BotDog got too excited...\nand peed in the terminal!")
    elsif $play_counter < 3
        clear
        empty_border(13)
            if $play_counter == 1
                loading("Playing")
                play_art
                centre_text("#{$user_name}, you threw a ball\n and BotDog chased it!")
            elsif $play_counter == 2
                loading("Playing")
                play_art
                centre_text("Wow. BotDog is really hyped...")
            end
    end
end


############################## GAME PLAY ##############################
begin

# App checks if user has input their name as an argument on the command line and prompts user to input their name if ARGV is empty
if ARGV.length == 0
    centre_text("Looks like we didn't catch your name.\nWhat can we call you?")
    $user_name = gets.chomp.to_s
else
    $user_name = ARGV[0]
    ARGV.clear
end

welcome
centre_text("Hey #{$user_name}!\nMeet BotDog!\nBest Behaved Boy!")
puts "Take good care of him".center(30).colorize(:light_blue)

#Game play loop begins with increment counters set to 0. Global variables utilised for use within pat, feed and play methods
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
        centre_text("Uh oh! Can't do that yet!\nPlease select again")
    end
end

rescue
    centre_text("Oops. Better try that again")
end


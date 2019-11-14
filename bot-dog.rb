require 'colorize'
require 'colorized_string'

user_name = ARGV

### ART ###
def border
    puts "*"*30
end

def clear
    puts "\e[H\e[2J"
end

def animation
    3.times do
    i = 1
    while i < 3
        puts "\e[H\e[2J"
      File.foreach("./animation/#{i}.rb") { |f| puts f }
      sleep(0.3)
      i += 1
    end
  end
end

def welcome
    border
    # puts "=             __             ="
    # puts "=            /  \\            ="
    # puts "=           / ..|\\           ="
    # puts "=          (_\\  |_)          ="
    # puts "=          /  \\@'            ="
    # puts "=         /     \\            ="
    # puts "=     _  /  `   |            ="
    # puts "=     \\/  \\  | _\\            ="
    # puts "=      \\  /_ ||  \\_          ="
    # puts "=       \\____)|_) \\_)        ="
    # puts "=                            ="
        # puts "=          ,-~~~~-,          ="
        # puts "=    .-~~~;        ;~~~-.    ="
        # puts "=   /    /          \\    \\   ="
        # puts "=  {   .'{  O    O  }'.   }  ="
        # puts "=   `~`  { .-~~~~-. }  `~`   ="
        # puts "=        ;/        \\;        ="
        # puts "=       /'._  ()  _.'\\       ="
        # puts "=      /    `~~~~`    \\      ="
        # puts "=     {                }     ="
        # puts "=     {     }    {     }     ="
        # puts "=     {     }    {     }     ="
        # puts "=     /     \\    /     \\     ="
        # puts "=    { { {   }~~{   } } }    ="
        # puts "=     `~~~~~`    `~~~~~`     ="
        # puts "=       (`========'`)        =" 
        # puts "=       (_.=======._)        ="
    animation
    puts "*"*30
    puts ColorizedString["       BORK BORK       "].colorize(:red)
    border
    `afplay -t 1 ./sound-files/bark.mp3`
end


### Menu Screen ###
def menu
    # puts "Hooman! What would you like to do?"
    border
    puts "Press 1 to pat BotDog"
    puts "Press 2 to feed BotDog"
    puts "Press 3 to play with BotDog"
    puts "Press 9 to quit"
    border
end

### Counters ###
def pat
$pat_counter += 1
    if $pat_counter == 3
        clear
        border
        puts "=                            ="
        puts "=" + "  .    .   *       *        ".colorize(:yellow) + "="
        puts "=" + "    *       .    )    .     ".colorize(:yellow) + "="
        puts "=" + "           .         .      ".colorize(:yellow) + "=" 
        puts "=   .-------------.          =" 
        puts "=  /_/_/_/_/_/_/_/ \\         ="       
        puts "= //_/_/_/_/_/_// _ \\ __     ="      
        puts "=/_/_/_/_/_/_/_/|/ \\.' .`-o  ="                
        puts "= |             ||-'(/ ,--'  ="             
        puts "= |   BOTDOGS   ||  _ |      ="                
        puts "= |    CRIB     ||'' ||      ="                    
        puts "= |_____________|| |_|L      =" 
        border 
        puts "You pat BotDog so much
                 he went to bed!"
        puts "ZZZ ZZZ ZZZ"
        exit
    elsif $pat_counter < 3
        clear
        border
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
        border
        puts "You pat BotDog!"
    end
end



def feed
    $feed_counter += 1
    if $feed_counter == 3
        clear
        border
        puts "=                            ="  
        puts "=          }       }  {      ="      
        puts "=      {  { '_^_'  {   }     ="
        puts "=       }  '(___)'    {      ="
        puts "=      {  '(______)'   }     ="
        puts "=       '(_________)'        ="
        puts "=      '(___________)'       ="
        puts "=                            =" 
        puts "=           OH NO!           =" 
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
        puts "You fed BotDog!"
        end
    end





def play
    $play_counter += 1
    if $play_counter == 3
        clear
        border
        puts "=                            ="
        puts "=                            ="
        puts "=                  |\\        ="
        puts "=          /    /\\/o\\_       ="
        puts "=         (.-.__.(   __o     ="
        puts "=      /\\_(      .----'      ="
        puts "=       .' \\____/            ="
        puts "=      /   /  / \\            ="
        puts "=  ___:____\\__\\__\\_______    ="
        puts "=                            ="
        border
        puts "OH NO!" 
        puts "BotDog got too excited..."
        puts "and peed in the terminal!"
    elsif $play_counter < 3
        clear
        border
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
        border
        puts "You threw a ball for BotDog!"
    end
end


### GAME PLAY ###

welcome
puts "Hey #{ARGV}, I'm BotDog."

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
        
    end
end
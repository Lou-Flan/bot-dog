user_name = ARGV

### ART ###
def welcome
    puts "*"*30
    puts "=             __             ="
    puts "=            /  \\            ="
    puts "=           / ..|\\           ="
    puts "=          (_\\  |_)          ="
    puts "=          /  \\@'            ="
    puts "=         /     \\            ="
    puts "=     _  /  `   |            ="
    puts "=     \\/  \\  | _\\            ="
    puts "=      \\  /_ ||  \\_          ="
    puts "=       \\____)|_) \\_)        ="
    puts "=                            ="
    puts "*"*30
    puts "       WELCOME TO BOTDOG       "
    puts "*"*30
end


### Menu Screen ###
def menu
    # puts "Hooman! What would you like to do?"
    puts "*"*30
    puts "Press 1 to pat BotDog"
    puts "Press 2 to feed BotDog"
    puts "Press 3 to play with BotDog"
    puts "Press 000 to quit"
    puts "*"*30
end

### Counters ###
def pat
$pat_counter += 1
    if $pat_counter == 3
        puts "*"*30
        puts "=                            ="
        puts "=  .    .   *       *        ="
        puts "=     *       .   )    .     =" 
        puts "=          .        .        =" 
        puts "=   .-------------.          =" 
        puts "=  /_/_/_/_/_/_/_/ \\         ="       
        puts "= //_/_/_/_/_/_// _ \\ __     ="      
        puts "=/_/_/_/_/_/_/_/|/ \\.' .`-o  ="                
        puts "= |             ||-'(/ ,--'  ="             
        puts "= |             ||  _ |      ="                
        puts "= |             ||'' ||      ="                    
        puts "= |_____________|| |_|L      =" 
        puts "*"*30 
        puts "You pat BotDog so much
                 he went to bed!"
        puts "ZZZ ZZZ ZZZ"
        exit
    elsif $pat_counter < 3
        puts "Bork!"
        puts "Good boi loves pats"
        puts "<3"
    end
end

def feed
    $feed_counter += 1
        if $feed_counter == 3
            puts "BotDog is so full"
            puts "Poopsy daisy"
            $feed_counter = 0
        elsif $feed_counter < 3
            puts "*"*30
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
            puts "*"*30
            puts "You fed BotDog!"
        end
    end

def play
    $play_counter += 1
    if $play_counter == 3
        puts "Oh dear. BotDog got too excited and peed in the terminal!"
    elsif $play_counter < 3
        puts "*"*30
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
        puts "*"*30
        puts "You threw a ball for BotDog!"
    end
end





welcome
puts "Hey #{ARGV}, I'm BotDog."

$pat_counter = 0
$feed_counter = 0
$play_counter = 0

until game = false
    menu
    selection = gets.chomp.to_i

    if selection == 1
        pat
    elsif selection == 2
        feed
    elsif selection == 3
        play
    elsif selection == 000
        game = false
        exit
    else 
        menu
    end
end
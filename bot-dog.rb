user_name = ARGV

### Welcome Screen ###
def welcome
    puts "******************************"
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
    puts "******************************"
    puts "       WELCOME TO BOTDOG       "
    puts "******************************"
end
### Menu Screen ###
def menu
    # puts "Hooman! What would you like to do?"
    puts "Press 1 to pat BotDog"
    puts "Press 2 to feed BotDog"
    puts "Press 3 to play with BotDog"
    puts "Press 000 to quit"
end

### Counters ###
def pat
$pat_counter += 1
    if $pat_counter == 3
        puts 
        puts "BotDog.... loves.... patss zzz zzz zzzzzz"
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
            puts "YUM"
        end
    end

def play
    $play_counter += 1
    if $play_counter == 3
        puts "Oh dear. BotDog got to excited and peed in the terminal!"
    elsif $play_counter < 3
        puts "Bork! Fetch is my favourite <3"
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
        # break
    elsif selection == 2
        feed
        # break
    elsif selection == 3
        play
        # break
    elsif selection == 000
        game = false
        exit
    else 
        menu
    end
end
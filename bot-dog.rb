user_name = ARGV

### Menu Screen ###
def menu
    puts "Hooman! What would you like to do?"
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



menu

selection = gets.chomp.to_i

$pat_counter = 0
$feed_counter = 0
$play_counter = 0

if selection == 1
    pat
end
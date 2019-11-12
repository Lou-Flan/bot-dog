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

def feed
    $feed_counter += 1
        if $feed_counter == 3
            puts "BotDog is so full"
            puts "　　　　　 　　　
                              ｛＼　　　 　　
            　　　　　　　　 .,iﾄ .ﾞﾐ.　　　　
            　　　　　 ._,,yr!″　 《yyy,,,,_　　　　　
            　　　　 ,メ″　　　 .｛l厂　 ´ﾞ)z　　
            　　　　.l|　　　　　 l厂　　　　 ﾞlly_　
            　　 .,ノﾐly　　　　　　　　　 　,メﾞﾞ＼.　
            　　,i「　 .ﾞ＼u,,,,,,__　 .___,,,yr!″　　.\　 　
            　　《　　　　　　⌒ﾞﾞ¨⌒′　　　　　il|､　
            　ノ'＼　　　　　　　　　　　　 　　 _yl¨ﾞ《
            i|′ .ﾞ＼u_　　　　　　　　　 _,yr厂　　ﾞlli
            li,　　　　.ﾞﾞ^冖￢─ｰ￢冖ﾞ¨′　　　.メl
            .＼,_　　　　　　　　　　　　　 　　　 ,zl「
            　　ﾞﾞ＼u,,_　　　　　　　　　 .__,,yrll^″　　
            　　　　¨^～---vvvvrr冖¨¨′..."

            puts "Poopsy daisy"
            $feed_counter = 0
        elsif $feed_counter < 3
            puts "YUM"
        end
    end

menu

selection = gets.chomp.to_i

$pat_counter = 0
$feed_counter = 0
$play_counter = 0


if selection == 1
    pat
elsif selection == 2
    feed
end
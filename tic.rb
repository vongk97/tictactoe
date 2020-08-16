class TicTacToe

    def initialize
        make_grid()
        puts "Welcome to Tic Tac Toe."
        play
    end

    #Create Grid
    def make_grid()
        puts "   |   |   "
        puts "-----------"
        puts "   |   |   "
        puts "-----------"
        puts "   |   |   "
    end

    #Update grid
    def update_grid()
        puts " #{@@tl} | #{@@tm} | #{@@tr} "
        puts "-----------"
        puts " #{@@ml} | #{@@mm} | #{@@mr} "
        puts "-----------"
        puts " #{@@bl} | #{@@bm} | #{@@br} "
    end

    def check_grid(choice, symbol)
        case choice.downcase
        when "tl"
            if(@@tl=="")
                @@tl="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end
        when "tm"
            if(@@tm=="")
                @@tm="#{symbol}"
            else
                puts "Position Taken. Try again."  
                return false
            end

        when "tr"
            if(@@tr=="")
                @@tr="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end

        when "ml"
            if(@@ml=="")
                @@ml="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end

        when "mm"
            if(@@mm=="")
                @@mm="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end

        when "mr"
            if(@@mr=="")
                @@mr="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end

        when "bl"
            if(@@bl=="")
                @@bl="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end

        when "bm"
            if(@@bm=="")
                @@bm="#{symbol}"
            else
                puts "Position Taken. Try again."  
                return false
            end

        when "br"
            if(@@br=="")
                @@br="#{symbol}"
            else
                puts "Position Taken. Try again."
                return false
            end
        else
            puts "Invalid choice. Try again."
            return false
        end
        return true
    end

    def check_win()
        if(@@tl=="X" && @@tm=="X" && @@tr=="X")
            puts "You win!"
            return true
        elsif(@@ml=="X" && @@mm=="X" && @@mr=="X")
            puts "You win!"
            return true 
        elsif(@@bl=="X" && @@bm=="X" && @@br=="X")
            puts "You win!"
            return true      
        elsif(@@tl=="X" && @@ml=="X" && @@bl=="X")
            puts "You win!"
            return true 
        elsif(@@tm=="X" && @@mm=="X" && @@bm=="X")
            puts "You win!"
            return true 
        elsif(@@tr=="X" && @@mr=="X" && @@br=="X")
            puts "You win!"
            return true 
        elsif(@@tl=="X" && @@mm=="X" && @@br=="X")
            puts "You win!"
            return true 
        elsif(@@tr=="X" && @@mm=="X" && @@bl=="X")
            puts "You win!"
            return true 
        end

        if(@@tl=="O" && @@tm=="O" && @@tr=="O")
            puts "You lose!"
            return true
        elsif(@@ml=="O" && @@mm=="O" && @@mr=="O")
            puts "You lose!"
            return true 
        elsif(@@bl=="O" && @@bm=="O" && @@br=="O")
            puts "You lose!"
            return true      
        elsif(@@tl=="O" && @@ml=="O" && @@bl=="O")
            puts "You lose!"
            return true 
        elsif(@@tm=="O" && @@mm=="O" && @@bm=="O")
            puts "You lose!"
            return true 
        elsif(@@tr=="O" && @@mr=="O" && @@br=="O")
            puts "You lose!"
            return true 
        elsif(@@tl=="O" && @@mm=="O" && @@br=="O")
            puts "You lsoe!"
            return true 
        elsif(@@tr=="O" && @@mm=="O" && @@bl=="O")
            puts "You lose!"
            return true 
        else
            return false
        end
    end

    def play()
        choice = ""
        while(choice !="exit")
            puts "Your turn: Choose a position(tl, tm, tr, ml, mm, mr, bl, bm, br)"
            choice = gets.chomp
            while (!check_grid(choice, "X"))
                puts "Your turn: Choose a position(tl, tm, tr, ml, mm, mr, bl, bm, br)"
                choice = gets.chomp
            end
            update_grid()
            computer_choice()
            if (check_win())
                break
            end
            
        end
    end

    def computer_choice()
        puts "Computer's Turn:"
        options = ["tl", "tm", "tr", "ml", "mm", "mr", "bl", "bm", "br"]
        while (!check_grid(options.sample, "O")) #options.sample chooses random array element
            puts "Computer's Turn:"
            options = ["tl", "tm", "tr", "ml", "mm", "mr", "bl", "bm", "br"]
            if (check_win())
                break
            end
            if(@@tl!="" && @@tm!="" && @@tr!="" && @@ml!="" && @@mm!="" && @@mr!="" && @@bl!="" && @@bm!="" && @@br!="")
                puts "Board is full. Stalemate."
                exit # No more moves can be made. Exit program
            end
        end
        update_grid()
    end

    @@tl=""
    @@tm=""
    @@tr=""
    @@ml=""
    @@mm=""
    @@mr=""
    @@bl=""
    @@bm=""
    @@br=""

    TicTacToe.new
end


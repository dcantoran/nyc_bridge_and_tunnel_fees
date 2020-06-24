class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "\nWelcome to New York's Bridge and Tunnel Fees!\n" # <- Puts out the welcome message
        get_bridges                                       # <- Calling #get_bridges method
        list_bridges                                      # <- Second, calling #list_bridges for user to see list menu
        get_user_bridge                                   # <- Third, call #get_user_bridge to record users selection
        goodbye                                           # <- Last, #goodbye to puts out exit message
    end

    def get_bridges
        @bridges = NycBridgeAndTunnelFees::Bridge.all     # <- Loads the bridges into the Bridge class #self.all method
    end 

    def list_bridges
      sleep(1)                                            # <- Pause output for one second, better user experience
      puts "\nWhat bridge or tunnel would you like more info on? Please enter a number from 1-31.\n" 
      sleep(1)                                            # <- Pause before bridge list prints to give user time to read question above
      
      NycBridgeAndTunnelFees::Bridge.create               # <- Scrapes or persists bridge css text into Bridge self.all
      @bridges.each_with_index {|bridge, idx| puts "\n#{idx + 1}. #{bridge.name}\n"} # puts #bridge list with idx (+ 1 because self.all
    end                                                                              # array starts at 0) and name

    def get_user_bridge

      input = nil                                       
      while input != "exit"                               # <- loop as long as input != "exit", but when "exit" loop exits
        input = gets.strip.downcase                       # <- grab user input and lowercase to eliminate text sensitivity errors
        
        if input.to_i > 0 && input.to_i <= 31             #<- as long as user input.to_i > 0 and input.to_i <= 31 resume conditional
          puts "\n---------------------------------------- #{@bridges[input.to_i - 1].name} ----------------------------------------" # puts bridge name, input.to_i to convert user input to integer and (-1) bc when I type "1" in array I need it to equal 0.
          sleep(1)
          puts "\nThe toll amount for the #{@bridges[input.to_i - 1].name} with EZ-Pass is: #{@bridges[input.to_i - 1].ezpass_price}\n" # puts ex-pass prices
          sleep(1)
          puts "\nWith cash: #{@bridges[input.to_i - 1].cash_price}\n"        # puts cash prices
          sleep(1)
          puts "\nVideo Toll by Mail: #{@bridges[input.to_i - 1].mail_price}" # puts toll by mail price
          puts "\nType list to see the bridge/tunnel menu again or type exit to close the app" # instructions to see menu or exit
        elsif input == "list"  # When user types list it'll list out the bridge menu again.
          # list_bridges
          @bridges.each_with_index {|bridge, idx| puts "\n#{idx + 1}. #{bridge.name}\n"}
        elsif input.to_i < 1 || input.to_i > 31 # if user enters a number < 1 or > 31 or types any other string other than "list" or "exit" they receive this instructional message
          puts "\nPlease choose a number from 1-31, to see the menu again type list or to close the app type exit."
        end 
      end 
    end 

    def goodbye 
        puts "\nYou've now exited NYC Bridge Fees. See you next time!" 
    end
end
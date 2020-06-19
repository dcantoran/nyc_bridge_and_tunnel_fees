class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "\nWelcome to NYC Bridges and Tunnels!\n"
        get_bridges
        list_bridges
        get_user_bridge
        goodbye
    end

    def get_bridges
        @bridges = NycBridgeAndTunnelFees::Bridge.all
    end 

    def list_bridges
      sleep(1)
      puts "\nWhat bridge or tunnel would you like more info on? Please enter a number from 1-31.\n"
      sleep(3)
      NycBridgeAndTunnelFees::Bridge.create
      @bridges.each_with_index {|bridge, idx| puts "\n#{idx + 1}. #{bridge.name}\n"}
    end

    def get_user_bridge
    #   each bridge object must be persisted and added to @bridges first.
    #   Iterate through @bridges and match "input" with object from @bridges.

      input = nil 
      while input != "exit"
        input = gets.strip.downcase
        
        if input.to_i > 0 && input.to_i < 31
          puts "\n--------- #{@bridges[input.to_i - 1].name} -----------"
          sleep(1)
          puts "\nThe toll amount for the #{@bridges[input.to_i - 1].name} with EZ-Pass is: #{@bridges[input.to_i - 1].ezpass_price}\n"
          sleep(1)
          puts "\nWith cash: #{@bridges[input.to_i - 1].cash_price}\n"
          sleep(1)
          puts "\nVideo Toll by Mail: #{@bridges[input.to_i - 1].mail_price}"
          puts "\nType list to see the bridge/tunnel menu again or type exit to close the app"
        elsif input == "list"
          # list_bridges
          @bridges.each_with_index {|bridge, idx| puts "\n#{idx + 1}. #{bridge.name}\n"}
        elsif input.to_i < 1 || input.to_i > 31
          puts "\nPlease choose a number from 1-31, to see the menu again type list or to close the app type exit."
        end 
      end 
    end 

    def goodbye 
        puts "\nYou've now exited NYC Bridge Fees. See you next time!"
    end
end
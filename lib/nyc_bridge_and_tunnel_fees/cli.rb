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
      puts "\nWhich bridge or tunnel would you like more info on?\n"
      NycBridgeAndTunnelFees::Bridge.create
    #   @b_and_t = @bridges.each_with_index {|month, idx| puts "\n#{idx + 1}. #{month.name}\n"}
    end

    def get_user_bridge
    #   each bridge object must be persisted and added to @bridges first.
    #   Iterate through @bridges and match "input" with object from @bridges.

      input = nil 
      while input != "exit"
        puts "\nEnter number of bridge you'd like more info on or type exit"
        input = gets.strip.downcase

        if input.to_i > 0
            puts "\nFor bridge or tunnel: #{@bridges[input.to_i - 1].name}"
            puts "\nThe toll amount for this bridge with EZ-Pass is: #{@bridges[input.to_i - 1].ezpass_price}\n"
            puts "\nWith cash: #{@bridges[input.to_i - 1].cash_price}\n"
            puts "\nVideo Toll by Mail: #{@bridges[input.to_i - 1].mail_price}"
        elsif input == "list"
            list_bridges
        end 
      end 
    end 

    def goodbye 
        puts "\nYou've now exited NYC Bridge Fees. See you next time!"
    end
end
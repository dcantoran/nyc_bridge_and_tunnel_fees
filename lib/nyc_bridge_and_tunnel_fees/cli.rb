class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "\nWelcome to NYC Bridges and Tunnels!\n"
        get_bridges
        list_bridges
        get_user_bridge
        goodbye
    end

    def get_bridges
        NycBridgeAndTunnelFees::Bridge.new("tpz") 
        NycBridgeAndTunnelFees::Bridge.new("GW") 
        @bridges = NycBridgeAndTunnelFees::Bridge.all
        # binding.pry
    end 

    def list_bridges
      # I want to puts the list out in alphabetical order.
      puts "\nWhich bridge or tunnel would you like more info on?\n"
      @bridges.each_with_index {|month, idx| puts "\n#{idx + 1}. #{month.name}\n"}
    end

    def get_user_bridge
    #   chosen_bridge = gets.strip.to_i
      input = nil 
      while input != "exit"
        puts "\nEnter number of bridge you'd like more info on or type exit"
        input = gets.strip.downcase # <- automatically downcase to prevent app/computer misinterpretation
        case input
        when "1"
            puts "\nYou chose option 1"
        when "2" 
            puts "\nYou chose option 2"
        end 
      end 
    end 

    def goodbye 
        puts "\nYou've now exited NYC Bridge Fees. See you next time!"
    end
end
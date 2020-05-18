class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "\nWelcome to NYC Bridges and Tunnels!\n"
        scrape_bridges
        list_bridges
        get_user_bridge
    end

    def scrape_bridges 
      @bridges = NycBridgeAndTunnelFees::Bridge.all
    end 

    def list_bridges
      # I want to puts the list out in alphabetical order.
      @bridges.sort.each_with_index {|month, idx| puts "\n#{idx + 1}. #{month}\n"}
    end

    def get_user_bridge
      chosen_bridge = gets.strip.to_i
      
      NycBridgeAndTunnelFees::Bridge.all.each.with_index(1) do |bridge|
         puts bridge
        #  binding.pry
      end 

    end 
end
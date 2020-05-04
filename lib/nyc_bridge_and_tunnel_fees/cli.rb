class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "\nWelcome to NYC Bridges and Tunnels!\n"
        scrape_bridges
        list_bridges
        get_user_bridge
    end

    def scrape_bridges 
      @bridges = ['The Bronx–Whitestone Bridge', 
        'Throgs Neck Bridge',
        'Tappan Zee / Mario M. Cuomo  Bridge',
        'Triborough (Robert F. Kennedy Bridge)',
        'Hugh L Carey (Brooklyn–Battery Tunnel)',
        'Queens Midtown Tunnel',
        'Verrazano-Narrows Bridge',
        'Henry Hudson Bridge',
        'Cross Bay Veterans Memorial Bridge',
        'Marine Parkway-Gil Hodges Memorial Bridge',
        'Atlantic Beach Toll Bridge',
        'Ogdensburg-Prescott Bridge',
        'Lewiston-Queenston Bridge',
        'Whirlpool Rapids Bridge',
        'Rainbow Bridge',
        'Peace Bridge',
        'Thousand Islands Bridge',
        'Seaway International Bridge (Cornwall-Massena)',
        'Whiteface Mountain Vet. Memorial Highway',
        'Prospect Mountain Vet. Memorial Highway',
        'Bear Mountain Bridge',
        'Kingston-Rhinecliff Bridge',
        'Mid-Hudson',
        'Newburgh-Beacon Bridge',
        'Rip Van Winkle Bridge',
        'Bayonne Bridge',
        'George Washington Bridge',
        'Goethals Bridge',
        'Outerbridge Crossing',
        'Holland Tunnel',
        'Lincoln Tunnel'
    ]

    end 

    def list_bridges
      # I want to puts the list out in alphabetical order.
      @bridges.sort.each_with_index {|month, idx| puts "\n#{idx + 1}. #{month}\n"}
    end

    def get_user_bridge
      chosen_bridge = gets.strip.to_i
      
      NycBridgeAndTunnelFees::Bridge.all.each.with_index(1) do |bridge|
         puts bridge
         binding.pry
      end 

    end 
end
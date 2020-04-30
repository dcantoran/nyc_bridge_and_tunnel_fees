class NycBridgeAndTunnelFees::CLI 
    def call 
        puts "Welcome to NYC Bridges and Tunnels!"
        puts ""
        get_bridges
        get_user_bridges
          # get_prices
    end

    def get_bridges 
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

    def get_user_bridges
      @bridges.each_with_index {|month, idx| puts "#{idx + 1}. #{month}"}
    end
end
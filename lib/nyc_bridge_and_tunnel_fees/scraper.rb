class NycBridgeAndTunnelFees::Scraper 

    # scrape_page class method using Nokogiri and open_uri to access the site url.
    def self.scrape_page  
        doc = Nokogiri::HTML(open("https://tollguru.com/toll-info/new-york/toll-rates-for-new-york-bridges-and-tunnels"))
    end 

    def self.create
    html = NycBridgeAndTunnelFees::Scraper.scrape_page         # <- #scrape_page from Scraper class
    bridge_info = html.css("div.page-content .table tbody tr") # <- store necessary css into bridge_info variable

    bridge_info.each do |b|                                        # <- iterate thru bridge_info, "|b|" = each individual bridge
        bridge = NycBridgeAndTunnelFees::Bridge.new                    # <- initialize a new bridge object and assign it to bridge variable
        bridge.name = b.css("td.left").text.strip                      # <- assign name attribute to new bridge object
        bridge.ezpass_price = b.css("td:nth-child(2)").text.strip      # <- assign ezpass_price attribute to new bridge object
        bridge.cash_price = b.css("td:nth-child(3)").text.strip        # <- assign cash_price attribute to new bridge object 
        bridge.mail_price = b.css("td:nth-child(4)").text.strip        # <- assign mail_price to attribute to new bridge object
        # binding.pry 
    end 
  end 

end 
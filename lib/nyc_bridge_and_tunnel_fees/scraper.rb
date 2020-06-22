class NycBridgeAndTunnelFees::Scraper 

    # scrape_page class method using Nokogiri and open_uri to access the site url.
    def self.scrape_page  
        doc = Nokogiri::HTML(open("https://tollguru.com/toll-info/new-york/toll-rates-for-new-york-bridges-and-tunnels"))
    end 

end 
class NycBridgeAndTunnelFees::Scraper 

    
    def self.scrape_page
        doc = Nokogiri::HTML(open("https://tollguru.com/toll-info/new-york/toll-rates-for-new-york-bridges-and-tunnels"))
        # bridges = doc.css("div.page-content .table tbody tr")
        # bridges.each do |b|
            # name = b.css("td.left").text.strip
            # NycBridgeAndTunnelFees::Bridge.new(name)
        # end
    end 

#   results.each_with_index do |r, i|
    # puts r.css("td.left").text.strip
#   end 

#   puts results.count
end 
require 'nokogiri'
require 'open-uri'

class NycBridgeAndTunnelFees::Scraper 

  site = "https://tollguru.com/toll-info/new-york/toll-rates-for-new-york-bridges-and-tunnels"

  doc = Nokogiri::HTML(open(site))
  results = doc.css("div.page-content .table tbody tr")

  results.each_with_index do |r, i|
    # puts r.css("td.left").text.strip
  end 

#   puts results.count

end 
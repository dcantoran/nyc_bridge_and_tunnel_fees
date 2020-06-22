class NycBridgeAndTunnelFees::Bridge 
  attr_accessor :name, :ezpass_price, :cash_price, :mail_price # <- reader and writer #'s for the 4 scraped attributes
  
  @@all = []                                                   # <- array to store instances of bridge objects

  def initialize          
    @name = name
    @ezpass_price = ezpass_price
    @cash_price = cash_price
    @mail_price = mail_price

    save
  end 
  
  def save 
    @@all << self                                              # <- #save 
  end 

  def self.all 
    @@all                                                      # <- class #self.all reader
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

  # def self.sort_list                                         # <- #sort_list class method to output the bridge list alphabetically
    # binding.pry
  # end 

end 
class NycBridgeAndTunnelFees::Bridge 
  attr_accessor :name, :price
  
  @@all = []

  def initialize
    @name = name
    @price = price
    save
  end 
  
  def save 
    @@all << self 
  end 

  def self.all 
    @@all 
  end

  def self.create
    html = NycBridgeAndTunnelFees::Scraper.scrape_page
    bridge_info = html.css("div.page-content .table tbody tr")

    bridge_info.each do |b| 
        bridge = NycBridgeAndTunnelFees::Bridge.new
        bridge.name = b.css("td.left").text.strip
        # bridge.price = b.css("").text.strip
        binding.pry 
    end 

  end 
  
  def self.scrape_bridges
    
  end  

end 
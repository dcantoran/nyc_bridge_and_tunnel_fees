class NycBridgeAndTunnelFees::Bridge 
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    save
  end 
  
  def self.all 
    @@all 
  end
  
  def self.create 
    html = NycBridgeAndTunnelFees::Scraper.scrape_page
    binding.pry
  end  

  def save 
    @@all << self 
  end 

end 
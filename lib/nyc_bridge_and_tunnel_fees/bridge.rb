class NycBridgeAndTunnelFees::Bridge 
  attr_accessor :name, :ezpass_price, :cash_price, :mail_price
  
  @@all = []

  def initialize
    @name = name
    @ezpass_price = ezpass_price
    @cash_price = cash_price
    @mail_price = mail_price

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
        bridge.ezpass_price = b.css("td:nth-child(2)").text.strip
        bridge.cash_price = b.css("td:nth-child(3)").text.strip
        bridge.mail_price = b.css("td:nth-child(4)").text.strip
        # binding.pry 
    end 

  end 

end 
class NycBridgeAndTunnelFees::Bridge 
  attr_accessor :name, :ezpass_price, :cash_price, :mail_price # <- reader and writer #'s for the 4 scraped attributes
  
  @@all = []                                                   # <- array to store instances of bridge objects

  def initialize          
    save
  end 
  
  def save 
    @@all << self                                              # <- #save 
  end 

  def self.all 
    @@all                                                      # <- class #self.all reader
  end

end 
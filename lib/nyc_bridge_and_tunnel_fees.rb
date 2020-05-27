require_relative "./nyc_bridge_and_tunnel_fees/version"
require_relative "./nyc_bridge_and_tunnel_fees/cli"
require_relative "./nyc_bridge_and_tunnel_fees/scraper"
require_relative "./nyc_bridge_and_tunnel_fees/bridge"

require "pry"
require 'nokogiri'
# require 'open-uri'

module NycBridgeAndTunnelFees
  class Error < StandardError; end
  # Your code goes here...
end

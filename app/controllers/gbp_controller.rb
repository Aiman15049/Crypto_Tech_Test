require 'rest-client'
require 'json'

class GbpController < ApplicationController

  def sterling
    bitcoin_converter
    smartcash_converter
  end

  def bitcoin_converter
    base_url = "https://coincap.io/page/GBP"
    response = RestClient.get base_url
    data = JSON.load response
    bitcoin_data_for_gdp = data["btcPrice"]
    @price_per_bitcoin = JSON.pretty_generate bitcoin_data_for_gdp
  end

  def smartcash_converter
    base_url = "https://coincap.io/page/SMART"
    response = RestClient.get base_url
    data = JSON.load response
    smartcash_data_for_usd = data["price"]
    @price_of_smartcash = JSON.pretty_generate smartcash_data_for_usd
  end

end

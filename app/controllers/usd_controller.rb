require 'rest-client'
require 'json'

class UsdController < ApplicationController

  def dollar
    bitcoin_converter
    smartcash_converter
  end

  def bitcoin_converter
    base_url = "https://coincap.io/page/USD"
    response = RestClient.get base_url
    data = JSON.load response
    bitcoin_data_for_usd = data["btcPrice"]
    @price_per_bitcoin = JSON.pretty_generate bitcoin_data_for_usd
  end

  def smartcash_converter
    base_url = "https://coincap.io/page/SMART"
    response = RestClient.get base_url
    data = JSON.load response
    smartcash_data_for_usd = data["price_usd"]
    @price_of_smartcash_per_usd = JSON.pretty_generate smartcash_data_for_usd
  end








end

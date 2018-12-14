require 'rest-client'
require 'json'

class EurController < ApplicationController

  def euro
    bitcoin_converter
    smartcash_converter
  end


  def bitcoin_converter
    base_url = "https://coincap.io/page/EUR"
    response = RestClient.get base_url
    data = JSON.load response
    bitcoin_data_for_eur = data["btcPrice"]
    @price_per_bitcoin = JSON.pretty_generate bitcoin_data_for_eur
  end

  def smartcash_converter
    base_url = "https://coincap.io/page/SMART"
    response = RestClient.get base_url
    data = JSON.load response
    smartcash_data_for_eur = data["price_eur"]
    @price_of_smartcash_per_eur = JSON.pretty_generate smartcash_data_for_eur
  end








end

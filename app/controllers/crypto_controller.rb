require 'rest-client'
require 'json'

class CryptoController < ApplicationController

   def index
     base_url = "https://coincap.io/page/GBP"
     response = RestClient.get base_url
     data = JSON.load response
     cool = data["btcPrice"]
     @test = JSON.pretty_generate cool
   end






end

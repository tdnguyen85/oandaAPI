require 'json'
require 'open-uri'
require 'uri'

class Rate < ActiveRecord::Base
  #attr_accessible :pair, :pair_time, :bid, :ask

  def initialize

  end

  def fetch_d3(q)
    #q = "EUR_USD"
    oanda_result = open("http://api-sandbox.oanda.com/v1/instruments/#{URI.escape(q)}/candles?count=40")
    oanda_json = JSON.load(oanda_result.read)

    candle_array = oanda_json["candles"]

    @pair_hash_candle = candle_array.map do |item|
      { "x" => (item["time"].to_s[-3..-1]).to_i , "y" => item["closeMid"] }

    end
  end

  def fetch_oanda(q)
    #q = "EUR_USD"
    oanda_result = open("http://api-sandbox.oanda.com/v1/instruments/#{URI.escape(q)}/candles?count=40")
    oanda_json = JSON.load(oanda_result.read)

    candle_array = oanda_json["candles"]

    @pair_hash_candle = candle_array.map do |item|
      { "title" => Time.at(item["time"]), "value" => item["closeMid"] }
    end

    # @statusboard_hash =
    # {
    #   "graph" => {
    #     "title" => "FX chart for Euro to US dollar",
    #     "yAxis" => {
    #       "minValue" => 1.25,
    #       "maxValue" => 1.40
    #       },
    #     "type" => "line",
    #     "datasequences" => [
    #       {
    #         "title" => "EUR_USD",
    #         "refreshEveryNSeconds" => 5,
    #         "datapoints" => [
    #           @pair_hash_candle
    #         ]
    #       }
    #     ]
    #   }
    # }
  end

end

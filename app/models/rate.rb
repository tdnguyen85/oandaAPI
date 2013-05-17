require 'json'
require 'open-uri'
require 'uri'

class Rate
  #attr_accessible :pair, :pair_time, :bid, :ask

  def initialize(q)
    @q = q

    oanda_result_single = open("http://api-sandbox.oanda.com/v1/instruments/#{URI.escape(@q)}/price")
    @oanda_json_result_single = JSON.load(oanda_result_single.read)
    @instrument_single = @oanda_json_result_single["instrument"]

    @time = @oanda_json_result_single["time"]
    @pair_bid = @oanda_json_result_single["bid"]
    @pair_ask = @oanda_json_result_single["ask"]

    oanda_result_candle = open("http://api-sandbox.oanda.com/v1/instruments/#{URI.escape(@q)}/candles?count=30")
    @oanda_json_result_candle = JSON.load(oanda_result_candle.read)
    @instrument_candle = @oanda_json_result_candle["instrument"]

    @candle_array = @oanda_json_result_candle["candles"]
    # @time_candle = @candle_array["time"]
    # @closing_candle = @candle_array["closeMid"]

  end

  def formatted_candle
    pair_hash_candle = @candle_array.map do |item|
      {"Time" => item["time"], "Price" => item["closeMid"]}
    end

    statusboard_hash_candle =
    {
      "graph" => {
        "title" => "FX chart for Euro to US dollar",
        "yAxis" => {
          "minValue" => 1.25,
          "maxValue" => 1.40
          },
        "type" => "line",
        "datasequences" => [
          {
            "title" => @instrument_candle,
            "refreshEveryNSeconds" => 120,
            "datapoints" => [
              pair_hash_candle
            ]
          }
        ]
      }
    }
  end

  def formatted_single
    pair_hash =
    {
      "Time" => @time,
      "Ask" => @pair_ask
    }

    statusboard_hash =
    {
      "graph" => {
        "title" => "FX rate for Euro to US dollar",
        "datasequences" => [
          {
            "title" => @instrument_single,
            "refreshEveryNSeconds" => 120,
            "datapoints" => [
              pair_hash
            ]
          }
        ]
      }
    }
  end

end

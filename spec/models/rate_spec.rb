require 'spec_helper'

describe Rate do

  it "fetched data from oanda" do
    pair = Rate.new('EUR_USD')
    pair_data = pair.fetch_oanda
    expect(pair_data).to be_a Hash
  end


  it "should have a result from oanda API call" do
    oanda_result_single = open("http://api-sandbox.oanda.com/v1/instruments/EUR_USD/price")
    oanda_json_result_single = JSON.load(oanda_result_single.read)
    expect(oanda_result_single).to be_true
    expect(oanda_json_result_single).to be_true
  end

  it "should have a time" do
    time = oanda_json_result_single['time']
    expect(time).to be_true
  end

  it "should have a bid from API call" do
    bid = oanda_json_result_single['bid']
    expect(bid).to be_true
  end

  it "should have an ask from API call" do
    ask = oanda_json_result_single['ask']
    expect(ask).to be_true
  end

  it "should have candle bar result from API call" do
    oanda_result_candle = open("http://api-sandbox.oanda.com/v1/instruments/EUR_USD/candles?count=30")
    oanda_json_result_candle = JSON.load(oanda_result_candle.read)
    expect(oanda_result_candle).to be_true
    expect(oanda_json_result_candle).to be_true
  end

  it "should have a candle array" do
    candle_array = oanda_json_result_candle["candles"]
    expect(candle_array).to be_true
  end

end



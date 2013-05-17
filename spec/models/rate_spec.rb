# require 'spec_helper'



# describe Rate do

#   it "has a query" do
#     @q = "EUR_USD"
#     expect(@q).to eq "EUR_USD"
#   end

#   it "has a pair time" do
#     time = 123456789.12345
#     expect(time). to eq 123456789.12345
#   end

#   it "has a bid price" do
#     bid = 1.23456
#     expect(bid).to eq 1.23456
#   end

#   it "has an ask price" do
#     ask = 1.23455
#     expect(ask).to eq 1.23455
#   end


#   it "should have a result from oanda API call" do
#     oanda_result_single = open("http://api-sandbox.oanda.com/v1/instruments/EUR_USD/price")
#     oanda_json_result_single = JSON.load(oanda_result_single.read)
#     expect(oanda_result_single).to be_true
#     expect(oanda_json_result_single).to be_true
#   end

#   it "should have a time" do
#     time = oanda_json_result_single['time']
#     expect(time).to be_true
#   end

#   it "should have a bid from API call" do
#     bid = oanda_json_result_single['bid']
#     expect(bid).to be_true
#   end

#   it "should have an ask from API call" do
#     ask = oanda_json_result_single['ask']
#     expect(ask).to be_true
#   end

#   it "should have candle bar result from API call" do
#     oanda_result_candle = open("http://api-sandbox.oanda.com/v1/instruments/EUR_USD/candles?count=30")
#     oanda_json_result_candle = JSON.load(oanda_result_candle.read)
#     expect(oanda_result_candle).to be_true
#     expect(oanda_json_result_candle).to be_true
#   end

#   it "should have a candle array"
#     candle_array = oanda_json_result_candle["candles"]
#     expect(candle_array).to be_true
#   end
# end



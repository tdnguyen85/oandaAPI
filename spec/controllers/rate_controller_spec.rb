require 'spec_helper'

describe RatesController do

  describe '#statusboard' do
    it "should create a new instance of rate" do
      rate = Rate.new
      expect(rate).to be_true
    end

    it "should call the fetch_oanda method with an argument" do
      rate = Rate.new
      rate_oanda = rate.fetch_oanda("EUR_USD")
      expect(rate_oanda).to be_an Array
    end

    it "should render json array of hashes formatted for statusboard" do
      get :statusboard, { :format => 'json' }
      json = JSON.parse(response.body)
      json.should be_a(Array)
    end
  end

  describe "#morris" do
    it "should create a new rate instance" do
      rate = Rate.new
      expect(rate).to be_true
    end

    it "should call the fetch_oanda method with an argument" do
      rate = Rate.new
      rate_oanda = rate.fetch_oanda("EUR_USD")
      expect(rate_oanda).to be_an Array
    end

     it "should render json array of hashes formatted for morris" do
      get :morris, { :format => 'json' }
      json = JSON.parse(response.body)
      json.should be_a(Array)
    end
  end


end
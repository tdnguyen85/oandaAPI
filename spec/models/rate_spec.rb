require 'spec_helper'

describe Rate do
  describe "#fetch_oanda" do
    it "should return a hash" do
      rate = Rate.new
      rate.fetch_oanda("EUR_USD").should be_an Array
    end
  end
end



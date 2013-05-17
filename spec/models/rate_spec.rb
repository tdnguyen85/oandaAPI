require 'spec_helper'

describe Rate do

  it "has a query" do
    q = "EUR_USD"
    expect(q).to eq "EUR_USD"
  end

  it "has a pair time" do
    time = 123456789.12345
    expect(time). to eq 123456789.12345
  end

  it "has a bid price" do
    bid = 1.23456
    expect(bid).to eq 1.23456
  end

  it "has an ask price" do
    ask = 1.23455
    expect(ask).to eq 1.23455
  end
end
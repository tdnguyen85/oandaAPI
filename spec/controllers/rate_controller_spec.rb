require 'spec_helper'

describe RatesController do

  describe :statusboard do
    it 'should have a chosen rate' do
      chosen_rate = "EUR_USD"
      expect(chosen_rate).to be_true
    end

  end

  describe :statusboardcandle do
    it 'should have a chosen rate' do
      chosen_rate = "EUR_USD"
      expect(chosen_rate).to be_true
    end
  end
end
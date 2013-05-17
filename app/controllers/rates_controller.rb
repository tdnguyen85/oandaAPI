class RatesController < ApplicationController


  def statusboard
    @chosen_rate = Rate.new("EUR_USD")
    render :json => @chosen_rate.formatted_single
  end

  def statusboardcandle
    @chosen_rate_candle = Rate.new("EUR_USD")
    render :json => @chosen_rate_candle.formatted_candle
  end
end

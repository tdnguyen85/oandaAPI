class RatesController < ApplicationController


  def statusboard
    @chosen_rate = Rate.new("EUR_USD")
    respond_to do |format|
      format.json { render :json => @chosen_rate.formatted_single }
    end
  end

  def statusboardcandle
    @chosen_rate_candle = Rate.new("EUR_USD")
    respond_to do |format|
      format.json { render :json => @chosen_rate_candle.formatted_candle }
    end
  end
end

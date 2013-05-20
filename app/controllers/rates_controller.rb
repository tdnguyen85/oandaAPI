class RatesController < ApplicationController


  def statusboard
    chosen_rate = Rate.new
    @oanda_result = chosen_rate.fetch_oanda("EUR_USD")

    respond_to do |format|
      format.json { render :json => @oanda_result }
    end
  end

  def morris
    chosen_rate_morris = Rate.new
    @oanda_result_morris = chosen_rate_morris.fetch_oanda("EUR_USD")

    respond_to do |format|
      format.html #{ redirect_to morris }
      format.json { render :json => @oanda_result_morris }
    end
  end
end

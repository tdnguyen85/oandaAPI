class AddColumnsToRates < ActiveRecord::Migration
  def change
    add_column :rates, :pair_time, :float
    add_column :rates, :bid, :float
    add_column :rates, :ask, :float
  end
end

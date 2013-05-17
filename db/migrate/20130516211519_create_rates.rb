class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :pair

      t.timestamps
    end
  end
end

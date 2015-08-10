class ChangeAvgTipFlatFeeToAvgTipMinFee < ActiveRecord::Migration
  def change
    rename_column :services, :avg_tip_flat_fee, :min_tip
  end
end

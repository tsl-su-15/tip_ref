class TipsController < ApplicationController
  def search

  end

  def search_results
    @service = Service.find(params[:service_id])
    @num_items = params[:num_items].to_i

    if @num_items.present? && @service.per_unit_tip > 0
      @suggested_tip = @num_items * @service.per_unit_tip
    elsif @service.avg_tip_percent > 0
      @suggested_tip = (@service.avg_tip_percent/100.0) * params[:amount_spent].to_f
      @total_bill = params[:amount_spent].to_f + @suggested_tip
    elsif @service.per_unit_tip > 0
      @suggested_tip = @num_items * @service.per_unit_tip
    elsif @service.min_tip > 0
      @suggested_tip = @service.min_tip
    else
      @suggested_tip = 0
    end

    if @service.min_tip > 0 && @suggested_tip < @service.min_tip
      @suggested_tip = @min_tip
    end


  end
end

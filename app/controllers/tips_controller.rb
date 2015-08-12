class TipsController < ApplicationController
  # before_action :set_service, only: [:search]

  def search
    respond_to do |format|
      format.html
      format.json
    end
  end

  def form_selection
    @service = Service.find(params[:service_id])


    respond_to do |format|
      format.html
      format.js
      format.json
    end
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
      @suggested_tip = @service.min_tip
    end


  end

  # private

  #   def set_service
  #     @service = Service.find(params[:service_id])
  #   end

  #   def service_params
  #     params.require(:services).permit(:name)
  #   end

end

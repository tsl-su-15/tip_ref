class TipsController < ApplicationController
  def search

  end

  def search_results
    @service = Service.find(params[:service_id])
    @num_items = params[:num_items].to_i

    @suggested_tip = @num_items * @service.per_unit_tip
  end
end

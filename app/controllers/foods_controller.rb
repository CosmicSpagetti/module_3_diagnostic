class FoodsController < ApplicationController
  def index
    render locals: {
      facade: FoodsFacade.new(params[:q])
    }
  end
end
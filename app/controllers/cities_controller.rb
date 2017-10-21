class CitiesController < ApplicationController
  def index
    q = City.ransack(name_cont: params[:q])
    @cities = q.result.limit(10)
  end
end

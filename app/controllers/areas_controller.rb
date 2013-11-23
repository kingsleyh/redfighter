class AreasController < ApplicationController

  def index
    @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save
     redirect_to areas_path
    else
      render new_area_path
    end
  end

  def area_params
    params.require(:area).permit(:name, :level, :description)
  end

end

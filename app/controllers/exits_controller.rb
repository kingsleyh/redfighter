class ExitsController < ApplicationController

  def index
    @exits = Exit.all
  end

  def new
    @exit = Exit.new
  end

  def create
    @exit = Exit.new(exit_params)
    if @exit.save
     redirect_to exits_path
    else
      render new_exit_path
    end
  end

  def exit_params
    params.require(:exit).permit(:name, :room_id, :description, :leads_to_room_id)
  end

end

class Api::RoomsController < ApplicationController

  def show
    @room = Room.find params[:id]
  end
end

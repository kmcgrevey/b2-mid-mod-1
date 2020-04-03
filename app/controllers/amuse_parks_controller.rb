class AmuseParksController < ApplicationController

  def show
    @amuse_park = AmusePark.find(params[:id])
  end

end
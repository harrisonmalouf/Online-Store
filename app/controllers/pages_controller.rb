class PagesController < ApplicationController

  def show
  @game =  Game.find params[:id]
  end

  def create

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      home_page.image = req["public_id"]
      home_page.save
    end

  end

  private
  def game_params
    params.require(:game).permit(:name, :price, :image, :release_date)
  end

end

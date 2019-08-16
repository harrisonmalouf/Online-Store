class PagesController < ApplicationController

  def home
  end

  def create

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      home_page.image = req["public_id"]
      home_page.save
  end

end

class StoreController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update]

  def show
    gon.store = @store
    @google_api = "https://maps.googleapis.com/maps/api/js?key=#{ ENV['GOOGLE_MAP_API'] }&callback=initMap"
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to store_path
    end
  end

  private
  def store_params
    params.require(:store).permit(:zipcode, :address, :latitude, :longitude, :tel, :time, :holyday)
  end

  def set_store
    @store = Store.find(1)
    @title = "店舗情報編集"
  end
end

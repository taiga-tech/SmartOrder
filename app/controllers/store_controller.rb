# frozen_string_literal: true

class StoreController < ApplicationController
  before_action :set_store, only: %i[edit update]

  def edit; end

  def update
    if @store.update(store_params)
      redirect_to management_index_path
    else
      render :edit
    end
  end

  private

  def store_params
    params.require(:store).permit(:zipcode, :address, :latitude, :longitude, :tel, :time, :holyday)
  end

  def set_store
    @store = Store.find(1)
    @title = '店舗情報編集'
  end
end

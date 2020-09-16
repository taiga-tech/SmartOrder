# frozen_string_literal: true

class ManagementController < ApplicationController
  before_action :set_store, only: :index

  def index
    gon.store = @store
    @google_api = "https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAP_API']}&callback=initMap"
  end

  private

  def set_store
    @store = Store.find(1)
  end
end

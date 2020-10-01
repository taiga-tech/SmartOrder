# frozen_string_literal: true

class ManagementController < ApplicationController
  def index
    @store = Store.find(1)
  end
end

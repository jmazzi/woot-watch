require 'woot_client'

class WootController < ApplicationController
  def index
    update
  end

  def update
    @woot = WootClient.parse
  end
end

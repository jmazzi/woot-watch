require 'woot_client'
class TrollController < ApplicationController
  def index
    update
  end

  def update
    @woot = WootClient.parse
  end

end

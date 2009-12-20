class WootController < ApplicationController
  def index
    update
  end

  def update
    unless @woot = read_fragment('woot', :expires_in => 10.seconds) || write_fragment('woot', Woot.parse)
      expire_fragment('woot')
    end
  end
end

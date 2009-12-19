class WootController < ApplicationController
  
  def index
    unless @woot = read_fragment('woot', :expires_in => 1.minute) || write_fragment('woot', Woot.parse)
      expire_fragment('woot')
    end
  end

end

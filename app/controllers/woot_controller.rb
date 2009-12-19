class WootController < ApplicationController

  def index
    update
  end

  def update
    unless @woot = read_fragment('woot', :expires_in => 10.seconds) || write_fragment('woot', Woot.parse)
      expire_fragment('woot')
    end
    respond_to do |format|
      format.html
      format.js do
        render :update do |page|
          page.replace_html  'product', :partial => 'product'
          page.visual_effect :highlight, 'product'
        end
      end
    end
  end

end

module WootHelper
  def refresh_link
    link_to_remote('Refresh', :url => { :action => "update"}, 
                    :loading => "$('refresh').toggle();$('loading').toggle();",
                    :complete => "$('loading').toggle();$('refresh').toggle();")
  end
end

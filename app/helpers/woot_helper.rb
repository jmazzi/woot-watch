module WootHelper
  def link_to_refresh
    link_to_remote('Refresh', 
      :url => { :action => "update"}, 
      :loading => "$('refresh').toggle();$('loading').toggle();",
      :complete => "$('loading').toggle();$('refresh').toggle();")
  end
  
  def refresh_page(last_item)
    periodically_call_remote(:url => { :action => 'update', :last_item => last_item })
  end
end

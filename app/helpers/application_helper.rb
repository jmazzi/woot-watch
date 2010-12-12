module ApplicationHelper
  def google_analytics
    if ['woot.heroku.com', 'woot.r00tshell.com'].include?(request.host)
      render(:partial => 'layouts/google_analytics') 
    end
  end
end

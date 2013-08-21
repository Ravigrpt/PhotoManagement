module ApplicationHelper

	def gmail_date_format(date)
    unless date.blank?  
      Time.zone.now.beginning_of_day <= date ?
      date.strftime('%I').to_i.to_s + date.strftime(':%M ') + date.strftime('%p').downcase :
      Time.zone.now.beginning_of_year <= date ?
      date.strftime('%b ') + date.day.to_s :
      date.strftime('%x')
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def date_format(date)
    if date.present?
      date.strftime('%d/%m/%y')
    end
  end

  def active_tab(name, controller)
    case name

    when "Photos"
      case controller
      when "photos"
        return "active"
      else
        return ""
      end

    when "Albums"
      case controller
      when "albums"
        return "active"
      else
        return ""
      end

    when "Comments"
      case controller
      when "comments"
        return "active"
      else
        return ""
      end

    else
      return ""
    end
  

  end
	
end

module ApplicationHelper
  def fix_url(str)
    str.starts_with?("http://") ? str : "http://#{str}"
  end

  def display_datetime(dt)
    dt.strftime("%d/%m/%Y %l:%M%P %Z")
  end

  def new_record?

  end

  def current_user

  end
end

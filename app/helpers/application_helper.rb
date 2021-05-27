# frozen_string_literal: true

module ApplicationHelper
  def secret_admin_name
    ENV['ADMIN_NAME'] || 'konnor'
  end

  def secret_admin_password
    ENV['ADMIN_PASSWORD'] || 'supersecret'
  end

  def current_class?(center_path)
    'active' if request.path == center_path
  end

  def full_title(page_title)
    base_title = "Scubabooker | Dive Booking App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end

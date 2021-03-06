class NotificationsController < ApplicationController

  before_action :logged_in?

  def index
     @notifications = Notification.where(recipient: current_user).unread
     render 'notifications/index.json.jbuilder'
  end

  def mark_as_read
  	@notifications = Notification.where(recipient: current_user).unread
  	@notifications.update_all(read_at: Time.zone.now)
  	render json: {success: true} 
  end

end
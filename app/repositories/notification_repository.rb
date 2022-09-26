module NotificationRepository
  def create_notification_for_whole_users(message, user_buyer, user_vendor)
    Notification.create({ message: message, user_id: user_buyer })
    Notification.create({ message: message, user_id: user_vendor })
  end
end

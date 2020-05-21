module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      image_path("default_avatar.jpg")
    end
  end
end

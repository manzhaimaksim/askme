module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      image_path('default_avatar.jpg')
    end
  end

  def inclination(number, form1, form2, form3)
    number = 0 if (number == nil || !number.is_a?(Numeric))
    return "#{number} #{form1}" if number % 10 == 1 && !(number % 100 == 11)
    return "#{number} #{form2}" if (number % 10).between?(2, 4) && !((number % 100).between?(11, 14))
    "#{number} #{form3}"
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end

module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact-me', contact_path } if you'd like to work together."
      content_tag(:p, greeting.html_safe, class: styles)
    end
  end

  def gravatar_helper user, size, placement
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: size, class: placement
  end

  def search_helper

  end

  def nav_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: about_me_path,
        title: "About Me"
      },
      {
        url: contact_path,
        title: "Contact"
      },
      {
        url: blogs_path,
        title: "Blog"
      },
      {
        url: portfolios_path,
        title: "Portfolio"
      },
      # {
      #   url: tech_news_path,
      #   title: "Tech News"
      # },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    tag_class = 'nav-item' if tag_type == 'li'
    nav_items.each do |item|
      nav_links << "<#{tag_type} class='#{tag_class}' ><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def nav_style_helper style
    style
  end

  def active? path
    "active" if current_page? path
  end

  def alert
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
      js add_gritter(msg, :time => 3000)
  end

end

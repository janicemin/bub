module MessagesHelper
  def recipients_options
    s = ''
    Profile.all.each do |p|
      s << "<option value='#{p.id}' data-img-src='#{gravatar_image_url(p.email, size: 50)}'>#{p.name}</option>"
    end
    s.html_safe
  end
end
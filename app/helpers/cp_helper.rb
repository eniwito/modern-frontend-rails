module CpHelper
  def alert_class_for(flash_type)
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end
  
  def link_to_in_li(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: "nav-item #{active}" do
      link_to body, url, html_options
    end
  end
  
  def link_to_sidebar(body, url)
    active = "active" if current_page?(url)
    link_to body, url, class: "nav-link #{active}"
  end
end
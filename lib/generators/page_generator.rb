class PageGenerator < Rails::Generators::Base
  argument :page_name, required: true, desc: "Page name, e.g: main"
  argument :page_layout, required: false, desc: "Page layout, e.g: application"

  def create_view_file
    create_file "#{page_path}/_#{page_name}.html.erb"
  end

  def create_css_file
    create_file "#{page_path}/#{page_name}.css"
  end

  def create_js_file
    create_file "#{page_path}/#{page_name}.js" do
      # require component's CSS inside JS automatically
      "import \"./#{page_name}.css\";\n"
    end
  end

  protected

  def page_path
    if page_layout.nil?
      "frontend/pages/#{page_name}"
    else
      "frontend/pages/#{page_layout}/#{page_name}"
    end
  end
end
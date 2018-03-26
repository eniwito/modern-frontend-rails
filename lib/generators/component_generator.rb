class ComponentGenerator < Rails::Generators::Base
  argument :component_name, required: true, desc: "Component name, e.g: button"
  argument :component_layout, required: false, desc: "Component layout, e.g: application"

  def create_view_file
    create_file "#{component_path}/_#{component_name}.html.erb"
  end

  def create_css_file
    create_file "#{component_path}/#{component_name}.css"
  end

  def create_js_file
    create_file "#{component_path}/#{component_name}.js" do
      # require component's CSS inside JS automatically
      "import \"./#{component_name}.css\";\n"
    end
  end

  protected

  def component_path
    if component_layout.nil?
      "frontend/components/#{component_name}"
    else
      "frontend/components/#{component_layout}/#{component_name}"
    end
  end
end
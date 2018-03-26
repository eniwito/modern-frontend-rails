module ApplicationHelper
  def component(component_name, layout, locals = {}, &block)
    name = component_name.split("_").first
    name = "#{layout}/#{name}" if layout.present?
    render("components/#{name}/#{component_name}", locals, &block)
  end

  alias c component

  def page(page_name, layout, locals = {}, &block)
    name = page_name.split("_").first
    name = "#{layout}/#{name}" if layout.present?
    render("pages/#{name}/#{page_name}", locals, &block)
  end

  alias p page
end

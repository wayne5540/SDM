module DrinksHelper
  def list_materials(type)
    type.collect { |m| concat(content_tag(:li, m.name, :id => m.id, :class => "list-group-item pointer", :status => "false")) }
  end
end

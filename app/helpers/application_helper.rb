module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end


  def current_project

    session[:current_project_id]||=Project.order("RANDOM()").first.id unless Project.count == 0
    Project.find session[:current_project_id] unless session[:current_project_id].nil?
  end
end

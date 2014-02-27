class FullDateInput < SimpleForm::Inputs::DateTimeInput
  def input_html_classes
    super.push('form-control no-padding')
  end

  def input
    @builder.send(:"date_select", attribute_name, input_options, input_html_options)
  end
end
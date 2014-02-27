class TextInput < SimpleForm::Inputs::TextInput
  def input_html_classes
    super.push('form-control')
  end

  def input_html_options
    super.merge! rows: '8'
  end
end
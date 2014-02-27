class PasswordInput < SimpleForm::Inputs::PasswordInput
  def input_html_classes
    super.push('form-control')
  end
end
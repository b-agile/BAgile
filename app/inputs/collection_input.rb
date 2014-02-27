class CollectionInput < SimpleForm::Inputs::CollectionInput
  def input_html_classes
    super.push('form-control no-padding')
  end

end
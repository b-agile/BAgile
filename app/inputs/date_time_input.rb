class DateTimeInput < SimpleForm::Inputs::DateTimeInput
  def input
    "#{@builder.text_field(attribute_name, input_html_options)}".html_safe
  end

  def input_html_classes
    super.push('form-control')
  end

  def input_html_options
        super.merge!   'data-behaviour' => 'datepicker'
        super.merge! 'data-date-language' => I18n.locale
      end

end
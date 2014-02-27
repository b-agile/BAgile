class CreditCardDateInput < SimpleForm::Inputs::DateTimeInput
  def input_html_classes
    super.push('no-padding')
  end

  def input
    @builder.send(:"date_select", attribute_name, input_options, input_html_options)
  end

  def input_options
    super.merge! :discard_day => true
    super.merge! :start_year => Date.today.year
    super.merge! :end_year => (Date.today.year+10)
    super.merge! :add_month_numbers => true
  end
end
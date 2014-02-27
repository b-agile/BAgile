# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :bootstrap, tag: 'div', class: 'control-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div', class: 'controls' do |ba|
      ba.use :input
      ba.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
      ba.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
    end
  end

  config.wrappers :custom, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'col-sm-4' do |ba|
      ba.use :label
    end
    b.wrapper tag: 'div', class: 'controls col-sm-8' do |ba|
      ba.use :input
      ba.use :error, wrap_with: {tag: 'div', class: 'help-inline alert alert-danger'}
      ba.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
    end
  end
  config.wrappers :inline_center, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'col-sm-6' do |ba|
      ba.use :label
    end
    b.wrapper tag: 'div', class: 'controls col-sm-6' do |ba|
      ba.use :input
      ba.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
      ba.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
    end
  end

  config.wrappers :inline, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'controls' do |ba|
      ba.use :input
      ba.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
      ba.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
    end
  end

  config.wrappers :prepend, tag: 'div', class: "form-group col-sm-12", error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'span', class: 'controls' do |input|
      input.wrapper tag: 'span', class: 'input-prepend' do |prepend|
        prepend.use :input
      end
      input.use :hint, wrap_with: {tag: 'span', class: 'help-block'}
      input.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
    end
    b.use :label

  end

  config.wrappers :append, tag: 'div', class: "control-group", error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div', class: 'controls' do |input|
      input.wrapper tag: 'div', class: 'input-append' do |append|
        append.use :input
      end
      input.use :hint, wrap_with: {tag: 'span', class: 'help-block'}
      input.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
    end
  end

  config.wrappers :checkbox, :tag => 'div', :class => 'control-group', :error_class => 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'controls col-md-8 col-md-offset-4' do |ba|
      ba.use :label_input
    end
  end

  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :custom
end

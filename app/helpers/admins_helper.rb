module AdminsHelper

  def iconStatus(boolean, options={})
    options[:true_text] ||= ''
    options[:false_text] ||= ''
    if boolean
      content_tag(:span, options[:true_text], :class => "fa fa-ban fa-lg" )
    else
      content_tag(:span, options[:true_text], :class => "fa fa-check fa-lg" )
    end
  end

end

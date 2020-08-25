module BlogsHelper

  def icon_published_now_or_later(boolean, options={})
    options[:true_text] ||= ''
    options[:false_text] ||= ''
    if boolean
      content_tag(:span, options[:true_text], :class => "fa fa-check fa-lg" )
    else
      content_tag(:span, options[:true_text], :class => "fa fa-calendar fa-lg" )
    end
  end

end

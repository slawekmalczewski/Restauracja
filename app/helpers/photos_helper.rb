module PhotosHelper

  def icon_published_or_not(boolean, options={})
    options[:true_text] ||= ''
    options[:false_text] ||= ''
    if boolean
      content_tag(:span, options[:true_text], :class => "fa fa-check fa-lg" )
    else
      content_tag(:span, options[:true_text], :class => "fa fa-calendar fa-lg" )
    end
  end

  def bytes_to_megabytes(plik)
    wynik = plik / (1024.0 * 1024.0)
    wynik = '%.4f' % wynik
  end

end

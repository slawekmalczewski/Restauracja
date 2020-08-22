module ApplicationHelper

  def convert_time_to_readable(format)
    z = format.in_time_zone
    z.strftime("%d %b, %Y at %H:%M")
  end

  def display_only_hour(operating_time)
    operating_time = operating_time .strftime("%H:%M")
  end

  def short_text(text_to_cut)
    shortened_text = truncate(text_to_cut, :length => 15, :omission => "ciag dalszy nastapi")
  end

end

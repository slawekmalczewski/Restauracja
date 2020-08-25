module ApplicationHelper

  def convert_time_to_readable(format)
    z = format.in_time_zone
    z.strftime("%d %b, %Y at %H:%M")
  end

  def display_only_hour(operating_time)
    operating_time = operating_time .strftime("%H:%M")
  end

  def short_text(text_to_cut)
    text = truncate(strip_tags(text_to_cut.to_s), length: 50, omission: " (...)")
  end

  def style_price_display(price)
    price = "#{price} zł."
  end

end

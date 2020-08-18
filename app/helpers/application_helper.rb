module ApplicationHelper

  def convert_time_to_readable(format)
    z = format.in_time_zone
    z.strftime("%d %b, %Y at %H:%M")
  end



end

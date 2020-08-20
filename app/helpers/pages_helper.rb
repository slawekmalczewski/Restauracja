module PagesHelper

  def calculate_number_of_years
    current_year = DateTime.now.year
    established_year = 1952
    current_year - established_year
  end

  def display_only_hour (operating_time)
    operating_time = operating_time .strftime("%H:%M")
  end

end

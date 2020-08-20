module PagesHelper

  def calculate_number_of_years
    current_year = DateTime.now.year
    established_year = 1952
    current_year - established_year
  end

end

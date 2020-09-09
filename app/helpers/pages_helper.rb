module PagesHelper

  def calculate_number_of_years
    current_year = DateTime.now.year
    established_year = 1952
    current_year - established_year
  end

  def newspaper_date
    current_date = DateTime.now.strftime("%d")
    current_month = DateTime.now.strftime("%m")
    current_year = DateTime.now.strftime("%Y")
    what_day_is_today = Time.now.strftime("%A")

    if what_day_is_today == "Monday"
      what_day_is_today = "Poniedziałek"
    elsif what_day_is_today == "Tuesday"
      what_day_is_today = "Wtorek"
    elsif what_day_is_today == "Wednesday"
      what_day_is_today = "Środa"
    elsif what_day_is_today == "Thursday"
      what_day_is_today = "Czwartek"
    elsif what_day_is_today == "Friday"
      what_day_is_today = "Piątek"
    elsif what_day_is_today == "Saturday"
      what_day_is_today = "Sobota"
    else
      what_day_is_today = "Niedziela"
    end

    answer= "#{what_day_is_today} #{current_date}/#{current_month}/#{current_year}"
  end



end

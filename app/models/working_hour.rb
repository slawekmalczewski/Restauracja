class WorkingHour < ApplicationRecord

  scope :sort_by_day, -> { order(id: :asc)}

  def self.check_if_we_are_open
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
    z = what_day_is_today

    opening_time = WorkingHour.where(:day => z)[0].open_time
    opening_time = opening_time.strftime("%H:%M")
    closing_time = WorkingHour.where(:day => z)[0].close_time
    closing_time = closing_time.strftime("%H:%M")
    day_today = DateTime.now.strftime("%d/%m/%Y")
    operating_flag = WorkingHour.where(:day => z)[0].operating
    if operating_flag == true
      answer = "Dzis restauracja jest nieczynna"
    else
      answer = "Dzis jest #{what_day_is_today} #{day_today} jestemy otwarci od #{opening_time} do #{closing_time}"
    end
    answer
  end

end

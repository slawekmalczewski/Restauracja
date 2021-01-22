class CreateWeatherServices < ActiveRecord::Migration[6.0]
  def change
    create_table :weather_services do |t|

      t.timestamps
    end
  end
end

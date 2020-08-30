# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Populate WorkingHours table

WorkingHour.create(day: 'Niedziela', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Sobota', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Piątek', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Czwartek', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Środa', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Wtorek', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

WorkingHour.create(day: 'Poniedziałek', open_time: '2000-01-01 16:05:00', close_time: '2000-01-01 22:00:00', operating: 'true')

# Populate Dish table

Dish.create(name: "Zurek", description: "zupa", weight: 250, weight_unit: "ml", price: 15, dish_type: "Zupa")

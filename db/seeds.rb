# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Service.destroy_all
services = [
  { name: 'barista', min_tip: 0 },
  { name: 'bartender', avg_tip_percent: 15, min_tip: 1, per_unit_tip: 1, unit_name: 'drink' },
  { name: 'delivery', avg_tip_percent: 10, min_tip: 2 },
  { name: 'maitre d', min_tip: 5, notes: 'ranges between $5 and $25' },
  { name: 'takeout', min_tip: 0, notes: 'unless they did something super awesome' },
  { name: 'waiter', avg_tip_percent: 15, min_tip: 0, notes: '20% for exceptional service, 10% for poor service' },
  { name: 'bellman', min_tip: 2, per_unit_tip: 1.5, unit_name: 'bag' },
]

services.each do |service_hash|
  Service.create(service_hash)
end
puts "#{Service.count} services are in the database"

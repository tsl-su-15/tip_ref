# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Service.destroy_all
services = [
  { name: 'barista' },
  { name: 'bartender', avg_tip_percent: 15, min_tip: 1, per_unit_tip: 1, unit_name: 'drink' },
  { name: 'delivery', avg_tip_percent: 10, min_tip: 2 },
  { name: 'maitre d', min_tip: 5, notes: 'ranges between $5 and $25' },
  { name: 'takeout', notes: 'unless they did something super awesome' },
  { name: 'waiter', avg_tip_percent: 15, min_tip: 0, notes: '20% for exceptional service, 10% for poor service' },
  { name: 'bellman', min_tip: 2, per_unit_tip: 1.5, unit_name: 'bag' },
  { name: 'concierge', min_tip: 5, notes: 'up to $20 for exceptional work, no tip required for directions'},
  { name: 'hotel housekeeping', min_tip: 2, per_unit_tip: 2, unit_name: 'night', notes: 'tip daily'},
  { name: 'parking valet', min_tip: 2, notes: 'up to $5 for good service'},
  { name: 'room service', min_tip: 5, notes: 'unless included in gratiutiy'},
  { name: 'bus driver', min_tip: 1, notes: 'not mass transit, only if handling luggage'},
  { name: 'cab driver', avg_tip_percent: 10, min_tip: 2 },
  { name: 'chauffer', avg_tip_percent: 13 },
  { name: 'gas station attendant', avg_tip_percent: 0, min_tip: 0 },
  { name: 'porter/skycap', per_unit_tip: 1, unit_name: 'bag', notes: '$2 for heavy items' },
  { name: 'barber/hairstylist', avg_tip_percent: 15 },
  { name: 'manicurist', avg_tip_percent: 15 },
  { name: 'spa service', avg_tip_percent: 20 },
  { name: 'masseuse', avg_tip_percent: 13 },
  { name: 'shoe shiner', min_tip: 2 },
  { name: 'furniture deliverer', min_tip: 5, notes: 'or just offer cold drinks' },
  { name: 'mover', min_tip: 10, per_unit_tip: 10, unit_name: 'person', notes: 'up to $25/person' },
  { name: 'bathroom attendant', min_tip: 1, notes: 'up to $3' }

]

services.each do |service_hash|
  Service.create(service_hash)
end
puts "#{Service.count} services are in the database"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Service.destroy_all
services = [
  { name: 'barista', avg_tip_percent: 0, avg_tip_flat_fee: 0 },
  { name: 'bartender', avg_tip_percent: 15, avg_tip_flat_fee: 1 }
]

services.each do |service_hash|
  Service.create(service_hash)
end
puts "#{Service.count} services are in the database"

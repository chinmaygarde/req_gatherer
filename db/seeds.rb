# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Priority.create(:title => "Low")
Priority.create(:title => "Medium")
Priority.create(:title => "High")
Priority.create(:title => "CRITICAL")

AuthLevel.create(:title => "Public")
AuthLevel.create(:title => "Registered User")
AuthLevel.create(:title => "Administrator")

Status.create(:title => "Pending")
Status.create(:title => "Under Review")
Status.create(:title => "Completed")
Status.create(:title => "Rejected/Deferred")

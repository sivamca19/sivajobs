# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Role.create([{ :name=>'admin'},{:name=>'job_seeker'},{:name=>'Employee'},{:name=>'Employer'}]) 

admin=User.create(:email => 'sivamanikandan@railsfactory.org', :password=>'9952161655',:password_confirmation=>'9952161655')
    role=Role.find_by_name("admin")
    admin.roles.push role
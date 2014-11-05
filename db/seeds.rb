# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

UserRole.delete_all
Role.delete_all
User.delete_all

role1 = Role.create!(name: "superadmin")
role2 = Role.create!(name: "admin")
role3 = Role.create!(name: "user")

user1 = User.new({fname: "Bob",   lname: "Superadmin", :email => 'bob@gmail.com',   :password => '123456', :password_confirmation => '123456'})
user1.save
user2 = User.new({fname: "Tom",   lname: "Admin",      :email => 'tom@gmail.com',   :password => '123456', :password_confirmation => '123456'})
user2.save
user3 = User.new({fname: "Harry", lname: "User",       :email => 'harry@gmail.com', :password => '123456', :password_confirmation => '123456'})
user3.save

user1.roles << role1
user2.roles << role2
user3.roles << role3

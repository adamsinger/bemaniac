# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :event do |f|
  f.title "MyString"
  f.date "2010-09-13"
  f.timeslot_from "2010-09-13 20:19:07"
  f.timeslot_to "2010-09-13 20:19:07"
  f.url "MyString"
  f.city "MyString"
  f.state "MyString"
  f.location "MyString"
end

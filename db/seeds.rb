# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prev_attr=[
  {name: "津川", amount: -4788},
  {name: "後藤", amount: -5827},
  {name: "杉本", amount: 35079},
  {name: "照井", amount: 19280},
  {name: "宗吉", amount: -7889},
  {name: "折下", amount: 4630},
  {name: "菅野", amount: -7889},
  {name: "福島", amount: 18685},
  {name: "柿沼", amount: 3148},
  {name: "星野", amount: 16609},
  {name: "山形", amount: -3303},
  {name: "松浦", amount: 24697},
  {name: "栃谷", amount: 5354},
  {name: "清水", amount: -7889},
  {name: "高橋", amount: 4630},
  {name: "青木", amount: -741},
  {name: "奥田", amount: -7889},
  {name: "藤井", amount: -6172},
  {name: "市瀬", amount: -7889},
  {name: "山田", amount: -8234},
  {name: "池谷", amount: -7889}
]


prev_attr.each do |elem|
  id = User.find_by(name: elem[:name]).id
  p  elem[:amount]
  Event.create(
    name: "前期繰越",
    amount: elem[:amount].to_i,
    event_users_attributes: [{:user_id => id.to_i}]
  )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#setup materials_type -> Mtype
mtypes = ['base', 'syrup', 'additive']
mtypes.each do |m|  Mtype.create(name: m) end

#setup materials -> Matrials
base_materials = ['濃縮咖啡', '本日精選',
 '玫瑰紅茶', '東方美人', '紅玉紅茶', '碧螺春',
 '阿里山烏龍', '星冰樂咖啡底液', '星冰樂牛奶底液',
 '星冰樂果汁底液', '牛奶', '豆漿']
syrup_materials = ["香草糖漿", "焦糖糖漿", "杏仁糖漿", "經典糖漿", "摩卡醬"]
additive_materials = ["焦糖醬", "星冰樂巧克力碎片", "鮮奶油",
  "抹茶粉", "經典巧克力粉", "罐裝巧克力粉", "罐裝肉桂粉","糖包"]

#setup materials
base_type = Mtype.find(1)
base_materials.each do |m| base_type.materials.create(name: m) end

syrup_type = Mtype.find(2)
syrup_materials.each do |m| syrup_type.materials.create(name: m) end

additive_type = Mtype.find(3)
additive_materials.each do |m| additive_type.materials.create(name: m) end


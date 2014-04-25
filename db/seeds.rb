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
base_material = ['濃縮咖啡', '本日精選',
 '玫瑰紅茶', '東方美人', '紅玉紅茶', '碧螺春',
 '阿里山烏龍', '咖啡底液', '牛奶底液', '水果底液',
 '牛奶', '豆漿']

base_type = Mtype.find(1)
base_material.each do |base| base_type.materials.create(name: base) end






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create!(
   last_name: "八木",
   first_name: "太郎",
   last_name_kana: "ヤギ",
   first_name_kana: "タロウ",
   post_code: "1234567",
   address: "東京都千代田区1-1",
   phone_number: "08011112222",
   email: "yagi@gmail",
   password: "123456"
   )
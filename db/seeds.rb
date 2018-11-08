# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create({
  name: 'Taniguchi',
  email: 'taniguchi@example.com',
  password: 'password',
  password_confirmation: 'password',
})

Task.create([
  {
    name: 'タスクを作る',
    description: 'やっていく必要があるのでタスクを作ります',
    user: u
  },
  {
    name: 'より凄いタスクを作る',
    description: '人間は日々進化するのでタスクの難易度を徐々に高めることで自己効果感が維持されます',
    user: u
  },
])
